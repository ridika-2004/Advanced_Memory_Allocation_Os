#include <lib/debug.h>
#include <pmm/MATIntro/export.h>
#include "import.h"

#define MAX_ORDER 11

#define PAGESIZE      4096
#define VM_USERLO     0x40000000
#define VM_USERHI     0xF0000000
#define VM_USERLO_PI  (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI  (VM_USERHI / PAGESIZE)

// will be set dynamically based on available ram
static unsigned int SEG1_START = VM_USERLO_PI;
static unsigned int SEG1_END = VM_USERLO_PI;
static unsigned int SEG2_START = VM_USERLO_PI;
static unsigned int SEG2_END = VM_USERHI_PI;

static int is_block_free_normal(unsigned int base, unsigned int order)
{
    unsigned int n = 1U << order;
    unsigned int i;


    if (base < VM_USERLO_PI) return 0;
    if (base + n > VM_USERHI_PI) return 0;

    for (i = 0; i < n; i++) {
        unsigned int pi = base + i;
        if (AT[pi].perm != 2) return 0;
        if (AT[pi].allocated != 0) return 0;
    }
    return 1;
}

void pmem_init(unsigned int mbi_addr)
{
    unsigned int i, j;
    unsigned int highest_addr = 0;
    unsigned int first_usable_pi = VM_USERHI_PI;
    unsigned int last_usable_pi = VM_USERLO_PI;

    devinit(mbi_addr);
    unsigned int n_entries = get_size();


    for (i = 0; i < n_entries; i++) {
        unsigned int end = get_mms(i) + get_mml(i);
        if (end > highest_addr) highest_addr = end;
        
        if (is_usable(i)) {
            unsigned int start_pi = get_mms(i) / PAGESIZE;
            unsigned int end_pi = (get_mms(i) + get_mml(i)) / PAGESIZE;
            
            if (start_pi < VM_USERLO_PI) start_pi = VM_USERLO_PI;
            if (end_pi > VM_USERHI_PI) end_pi = VM_USERHI_PI;
            
            if (start_pi < end_pi) {
                if (start_pi < first_usable_pi) first_usable_pi = start_pi;
                if (end_pi > last_usable_pi) last_usable_pi = end_pi;
            }
        }
    }
    unsigned int phys_nps = highest_addr / PAGESIZE;

    set_nps(VM_USERHI_PI);
    pmm_init_freelists();


    for (i = 0; i < get_nps(); i++) {
        at_set_allocated(i, 0);
        at_set_perm(i, 0);
        AT[i].next = -1;
        AT[i].prev = -1;
        AT[i].order = 0;
        AT[i].segment = 0;
    }


    for (i = 0; i < VM_USERLO_PI; i++) {
        at_set_perm(i, 1);
    }


    for (i = VM_USERLO_PI; i < VM_USERHI_PI; i++) {
        unsigned int phys_pi = i - VM_USERLO_PI;

        if (phys_pi >= phys_nps) {
            at_set_perm(i, 0);
            continue;
        }

        unsigned int paddr_start = phys_pi * PAGESIZE;
        unsigned int paddr_end   = paddr_start + PAGESIZE;

        int is_ram = 0;
        for (j = 0; j < n_entries; j++) {
            if (!is_usable(j)) continue;

            unsigned int start = get_mms(j);
            unsigned int end   = start + get_mml(j);

            if (start <= paddr_start && paddr_end <= end) {
                is_ram = 1;
                break;
            }
        }

        if (is_ram) {
            at_set_perm(i, 2);
            at_set_allocated(i, 0);
        } else {
            at_set_perm(i, 0);
        }
    }


    unsigned int total_usable_pages = 0;
    for (i = VM_USERLO_PI; i < VM_USERHI_PI; i++) {
        if (AT[i].perm == 2) total_usable_pages++;
    }
    

    unsigned int seg1_pages_target = total_usable_pages / 4;
    unsigned int seg1_pages_count = 0;
    
    SEG1_START = VM_USERLO_PI;
    SEG1_END = VM_USERLO_PI;
    SEG2_START = VM_USERLO_PI;
    SEG2_END = VM_USERHI_PI;
    

    for (i = VM_USERLO_PI; i < VM_USERHI_PI && seg1_pages_count < seg1_pages_target; i++) {
        if (AT[i].perm == 2) {
            seg1_pages_count++;
        }
    }
    

    SEG1_END = ((i + (1U << 10) - 1) / (1U << 10)) * (1U << 10);
    if (SEG1_END > VM_USERHI_PI) SEG1_END = VM_USERHI_PI;
    
    SEG2_START = SEG1_END;
    
    
    for (i = SEG1_START; i < SEG1_END; i++) {
        if (AT[i].perm == 2) AT[i].segment = 1;
    }
    for (i = SEG2_START; i < SEG2_END; i++) {
        if (AT[i].perm == 2) AT[i].segment = 2;
    }

    i = SEG1_START;
    while (i < SEG1_END) {
        if (AT[i].perm != 2 || AT[i].allocated != 0) {
            i++;
            continue;
        }

        if ((i & ((1U << 10) - 1)) == 0 && 
            i + (1U << 10) <= SEG1_END && 
            is_block_free_normal(i, 10)) {
            AT[i].order = 10;
            AT[i].segment = 1;
            at_list_add_segment(10, i, 1);
            i += (1U << 10);
        } else {

            i++;
        }
    }

    for (i = SEG1_START; i < SEG1_END; i++) {
        if (AT[i].perm == 2 && AT[i].order == 0 && AT[i].segment == 1) {
            AT[i].segment = 2;
        }
    }

    i = SEG2_START;
    while (i < SEG2_END) {
        if (AT[i].perm != 2 || AT[i].allocated != 0) {
            i++;
            continue;
        }

        int order;
        for (order = MAX_ORDER - 1; order >= 0; order--) {
            unsigned int size = 1U << order;

            if ((i & (size - 1)) != 0) continue;
            if (i + size > SEG2_END) continue; 

            if (is_block_free_normal(i, (unsigned int)order)) {
                break;
            }
        }

        if (order < 0) {
            i++;
            continue;
        }

        AT[i].order = (unsigned int)order;
        AT[i].segment = 2;
        at_list_add_segment((unsigned int)order, i, 2);
        i += (1U << order);
    }
}

