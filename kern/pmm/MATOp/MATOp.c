#include <lib/debug.h>
#include <pmm/MATIntro/export.h>
#include "import.h"

#define MAX_ORDER 11

#define PAGESIZE     4096
#define VM_USERLO    0x40000000
#define VM_USERHI    0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

#define SUPERPAGE_ORDER 10


static unsigned int total_free_pages_seg1 = 0;
static unsigned int total_free_pages_seg2 = 0;


static void update_free_counts(void) {
    total_free_pages_seg1 = 0;
    total_free_pages_seg2 = 0;
    
    for (int order = 0; order <= MAX_ORDER; order++) {
        int head = get_free_list_head_segment(order, 1);
        while (head != -1) {
            total_free_pages_seg1 += (1U << order);
            head = AT[head].next;
        }
    }
    
    
    for (int order = 0; order <= MAX_ORDER; order++) {
        int head = get_free_list_head_segment(order, 2);
        while (head != -1) {
            total_free_pages_seg2 += (1U << order);
            head = AT[head].next;
        }
    }
}


static int in_segment1(unsigned int pindex) {
    unsigned int mid = VM_USERLO_PI + (VM_USERHI_PI - VM_USERLO_PI) / 2;
    return (pindex >= VM_USERLO_PI && pindex < mid);
}


static int in_segment2(unsigned int pindex) {
    unsigned int mid = VM_USERLO_PI + (VM_USERHI_PI - VM_USERLO_PI) / 2;
    return (pindex >= mid && pindex < VM_USERHI_PI);
}

/*
 * Split a superpage from segment 1 into smaller blocks in segment 2
 */
static int split_superpage_from_segment1(unsigned int order) {
  
    int superpage = get_free_list_head_segment(SUPERPAGE_ORDER, 1);
    if (superpage == -1) return -1;
    
    at_list_remove_segment(SUPERPAGE_ORDER, superpage, 1);

    unsigned int size = 1U << SUPERPAGE_ORDER;
    for (unsigned int i = 0; i < size; i++) {
        AT[superpage + i].segment = 2;
    }
    
    
    unsigned int current_order = SUPERPAGE_ORDER;
    unsigned int current_base = superpage;
    
    while (current_order > order) {
        current_order--;
        unsigned int buddy = current_base + (1 << current_order);
        
        
        AT[buddy].order = current_order;
        AT[buddy].segment = 2;
        at_set_allocated(buddy, 0);
        at_list_add_segment(current_order, buddy, 2);
    }
    

    AT[current_base].order = order;
    AT[current_base].segment = 2;
    

    update_free_counts();
    
    return current_base;
}


int palloc_order(unsigned int order) {
    if (order >= MAX_ORDER) return -1;

    update_free_counts();
    unsigned int needed_pages = 1U << order;
    
    int pindex = -1;
    
    if (order == SUPERPAGE_ORDER) {
        // Superpage allocation: try segment 1 first, then segment 2
        if (total_free_pages_seg1 >= needed_pages) {
            pindex = get_free_list_head_segment(order, 1);
            if (pindex != -1) {
                at_list_remove_segment(order, pindex, 1);
            }
        }
        
        if (pindex == -1 && total_free_pages_seg2 >= needed_pages) {
            pindex = get_free_list_head_segment(order, 2);
            if (pindex != -1) {
                at_list_remove_segment(order, pindex, 2);
            }
        }
    } else {
        // Regular allocation: try segment 2 first
        if (total_free_pages_seg2 >= needed_pages) {
            unsigned int k = order;
            while (k < MAX_ORDER && get_free_list_head_segment(k, 2) == -1) {
                k++;
            }
            
            if (k < MAX_ORDER) {
                pindex = get_free_list_head_segment(k, 2);
                at_list_remove_segment(k, pindex, 2);
                
                // Split down to requested order
                while (k > order) {
                    k--;
                    unsigned int buddy = pindex + (1 << k);
                    AT[buddy].order = k;
                    AT[buddy].segment = 2;
                    at_set_allocated(buddy, 0);
                    at_list_add_segment(k, buddy, 2);
                }
            }
        }
        
        // If segment 2 doesn't have enough, try to split from segment 1
        if (pindex == -1 && total_free_pages_seg1 >= needed_pages) {
            pindex = split_superpage_from_segment1(order);
        }
    }
    
    if (pindex == -1) return -1;
    
    // Allocate the block
    unsigned int size = 1U << order;
    for (unsigned int i = 0; i < size; i++) {
        at_set_allocated(pindex + i, 1);
    }
    
    AT[pindex].order = order;
    
    // Clean internal metadata
    for (unsigned int i = 1; i < size; i++) {
        AT[pindex + i].order = 0;
    }
    
    // Update free counts after allocation
    update_free_counts();
    
    return pindex;
}

unsigned int palloc(void) {
    int res = palloc_order(0);
    if (res == -1) return 0;
    return (unsigned int)res;
}

void pfree_order(unsigned int pindex) {
    unsigned int order = AT[pindex].order;
    unsigned int segment = AT[pindex].segment;
    
    while (order < MAX_ORDER - 1) {
        unsigned int size = 1U << order;
        
        // Clear allocation bits for this block
        for (unsigned int i = 0; i < size; i++) {
            at_set_allocated(pindex + i, 0);
        }
        
        unsigned int buddy_idx = pindex ^ size;
        
        // Check if buddy can merge (must be in same segment)
        if (buddy_idx < VM_USERLO_PI || buddy_idx >= VM_USERHI_PI ||
            AT[buddy_idx].order != order ||
            at_is_allocated(buddy_idx) != 0 ||
            AT[buddy_idx].segment != segment) {
            break;
        }
        
        // Remove buddy from freelist
        at_list_remove_segment(order, buddy_idx, segment);
        
        // Choose lower address as new base
        if (buddy_idx < pindex) {
            pindex = buddy_idx;
        }
        
        order++;
        AT[pindex].order = order;
    }
    
    // Finally clear allocation bits for final merged block
    unsigned int final_size = 1U << order;
    for (unsigned int i = 0; i < final_size; i++) {
        at_set_allocated(pindex + i, 0);
    }
    
    at_list_add_segment(order, pindex, segment);
    
    // Update free counts after free
    update_free_counts();
}

void pfree(unsigned int pindex) {
    if (pindex < VM_USERLO_PI || pindex >= VM_USERHI_PI) return;
    if (at_is_allocated(pindex) == 0) return;
    pfree_order(pindex);
}

unsigned int palloc_superpage(void) {
    int res = palloc_order(SUPERPAGE_ORDER);
    if (res == -1) return 0;
    return (unsigned int)res;
}

void pfree_superpage(unsigned int pindex) {
    if (pindex < VM_USERLO_PI || pindex >= VM_USERHI_PI) return;
    if (AT[pindex].order != SUPERPAGE_ORDER) return;
    pfree_order(pindex);
}

