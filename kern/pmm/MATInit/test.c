#include <lib/debug.h>
#include <pmm/MATIntro/export.h>
#include "import.h"
#define HUGE_ORDER    10
#define MAX_ORDER     11

#define PAGESIZE      4096
#define VM_USERLO     0x40000000
#define VM_USERHI     0xF0000000
#define VM_USERLO_PI  (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI  (VM_USERHI / PAGESIZE)

// Define segment boundaries (should match MATInit.c)
#define SEG1_START    VM_USERLO_PI
#define SEG1_END      (VM_USERLO_PI + (VM_USERHI_PI - VM_USERLO_PI) / 2)
#define SEG2_START    SEG1_END
#define SEG2_END      VM_USERHI_PI

// ===========================
// 1. Basic sanity tests (existing)
// ===========================
int MATInit_test_basic()
{
    int nps = get_nps();

    if (nps <= 1000) {
        dprintf("test basic failed: NUM_PAGES too low (%d)\n", nps);
        return 1;
    }

    for (int i = 0; i < nps; i++) {
        if (at_is_allocated(i)) {
            dprintf("test basic failed: page %d allocated unexpectedly\n", i);
            return 1;
        }
        if ((i < VM_USERLO_PI || i >= VM_USERHI_PI) && at_is_norm(i)) {
            dprintf("test basic failed: reserved page %d marked normal\n", i);
            return 1;
        }
    }

    dprintf("Basic initialization test passed.\n");
    return 0;
}

// ===========================
// 2. Buddy system tests (existing)
// ===========================
int MATInit_test_buddy()
{
    int any_found = 0;

    for (int order = 0; order <= HUGE_ORDER; order++) {
        int head = get_free_list_head(order);
        while (head != -1) {
            if (head >= VM_USERLO_PI && head < VM_USERHI_PI && at_is_norm(head)) {
                any_found = 1;
                break;
            }
            head = at_get_next(head);
        }
        if (any_found) break;
    }

    if (!any_found) {
        dprintf("Buddy test failed: No blocks in normal zone found!\n");
        return 1;
    }

    dprintf("Buddy system test passed.\n");
    return 0;
}

// ===========================
// 3. Zone correctness tests
// ===========================
int MATInit_test_zones()
{
    int huge_found_1 = 0;
    int small_found_1 = 0;
    int small_found_2 = 0;

    dprintf("Checking segment boundaries: [%u-%u) and [%u-%u)\n", 
            SEG1_START, SEG1_END, SEG2_START, SEG2_END);

    // Check all orders
    for (int order = 0; order <= HUGE_ORDER; order++) {
        int head = get_free_list_head(order);
        while (head != -1) {
            if (head >= SEG1_START && head < SEG1_END) {
                if (order == HUGE_ORDER) {
                    huge_found_1 = 1;
                    dprintf("  Found superpage in Segment 1 at %d\n", head);
                } else {
                    small_found_1 = 1;
                    dprintf("  ERROR: Found order %d block in Segment 1 at %d\n", order, head);
                }
            } else if (head >= SEG2_START && head < SEG2_END) {
                if (order < HUGE_ORDER) {
                    small_found_2 = 1;
                }
            }
            head = at_get_next(head);
        }
    }

    if (small_found_1) { 
        dprintf("Zone test failed: Small blocks found in Segment 1 (should be only huge blocks)\n"); 
        return 1; 
    }
    
    if (!small_found_2) { 
        dprintf("Zone test failed: No small blocks in Segment 2\n"); 
        return 1; 
    }

    if (!huge_found_1) {
        dprintf("Zone test note: No superpages in Segment 1 (acceptable if Segment 1 is small)\n");
    }

    dprintf("Zone correctness test passed.\n");
    return 0;
}

// ===========================
// 6. Segment 1 exclusive superpage test
// ===========================
int MATInit_test_segment1_exclusive()
{
    // Verify that segment 1 ONLY has superpages (order 10)
    for (int order = 0; order < HUGE_ORDER; order++) {
        int head = get_free_list_head(order);
        while (head != -1) {
            if (head >= SEG1_START && head < SEG1_END) {
                dprintf("Segment 1 exclusive test failed: Found order %d block at %d in Segment 1\n", 
                        order, head);
                return 1;
            }
            head = at_get_next(head);
        }
    }

    dprintf("Segment 1 exclusive superpage test passed.\n");
    return 0;
}

// ===========================
// 4. Alignment test (existing)
// ===========================
int MATInit_test_alignment()
{
    for (int order = 0; order <= HUGE_ORDER; order++) {
        int head = get_free_list_head(order);
        while (head != -1) {
            if ((head & ((1U << order) - 1)) != 0) {
                dprintf("Alignment failed: page %d order %d\n", head, order);
                return 1;
            }
            head = at_get_next(head);
        }
    }

    dprintf("Alignment test passed.\n");
    return 0;
}

// ===========================
// 5. NEW: Segment boundary test
// ===========================
int MATInit_test_boundaries()
{
    // Verify that no block crosses segment boundaries
    for (int order = 0; order <= HUGE_ORDER; order++) {
        int head = get_free_list_head(order);
        while (head != -1) {
            unsigned int size = 1U << order;
            unsigned int end = head + size - 1;
            
            // Check if block crosses from segment 1 to segment 2
            if (head < SEG1_END && end >= SEG1_END) {
                dprintf("Boundary test failed: Block order %d at %d crosses segment boundary\n", 
                        order, head);
                return 1;
            }
            
            // Check if block starts in segment 2 but extends beyond VM_USERHI
            if (head >= SEG2_START && end >= VM_USERHI_PI) {
                dprintf("Boundary test failed: Block order %d at %d extends beyond user window\n", 
                        order, head);
                return 1;
            }
            
            head = at_get_next(head);
        }
    }

    dprintf("Segment boundary test passed.\n");
    return 0;
}

// ===========================
// 7. NEW: Segment 2 full range test
// ===========================
int MATInit_test_segment2_full_range()
{
    int orders_found[MAX_ORDER] = {0};
    
    // Check which orders exist in segment 2
    for (int order = 0; order <= HUGE_ORDER; order++) {
        int head = get_free_list_head(order);
        while (head != -1) {
            if (head >= SEG2_START && head < SEG2_END) {
                orders_found[order] = 1;
            }
            head = at_get_next(head);
        }
    }
    
    // Verify that at least some orders exist (don't require all if memory is limited)
    int orders_present = 0;
    for (int order = 0; order <= HUGE_ORDER; order++) {
        if (orders_found[order]) orders_present++;
    }
    
    if (orders_present == 0) {
        dprintf("Segment 2 full range test failed: No blocks found in Segment 2\n");
        return 1;
    }
    
    dprintf("Segment 2 full range test passed (%d orders present).\n", orders_present);
    return 0;
}

// ===========================
// 8. NEW: Memory exhaustion boundary test
// ===========================
int MATInit_test_exhaustion_boundaries()
{
    // Count total pages in each segment
    unsigned int total_pages_seg1 = 0;
    unsigned int total_pages_seg2 = 0;
    
    for (unsigned int i = SEG1_START; i < SEG1_END; i++) {
        if (at_is_norm(i)) total_pages_seg1++;
    }
    
    for (unsigned int i = SEG2_START; i < SEG2_END; i++) {
        if (at_is_norm(i)) total_pages_seg2++;
    }
    
    // Count pages in free lists
    unsigned int free_pages_seg1 = 0;
    unsigned int free_pages_seg2 = 0;
    
    // Count from superpages in segment 1
    int head = get_free_list_head(HUGE_ORDER);
    while (head != -1) {
        if (head >= SEG1_START && head < SEG1_END) {
            free_pages_seg1 += (1U << HUGE_ORDER);
        }
        head = at_get_next(head);
    }
    
    // Count from all orders in segment 2
    for (int order = 0; order <= HUGE_ORDER; order++) {
        head = get_free_list_head(order);
        while (head != -1) {
            if (head >= SEG2_START && head < SEG2_END) {
                free_pages_seg2 += (1U << order);
            }
            head = at_get_next(head);
        }
    }
    
    // Verify that free pages don't exceed total pages
    if (free_pages_seg1 > total_pages_seg1) {
        dprintf("Exhaustion test failed: Segment 1 free pages (%u) > total (%u)\n", 
                free_pages_seg1, total_pages_seg1);
        return 1;
    }
    
    if (free_pages_seg2 > total_pages_seg2) {
        dprintf("Exhaustion test failed: Segment 2 free pages (%u) > total (%u)\n", 
                free_pages_seg2, total_pages_seg2);
        return 1;
    }
    
    dprintf("Memory exhaustion boundary test passed.\n");
    return 0;
}

// ===========================
// 9. Run all tests
// ===========================
int test_MATInit()
{
    int res = 0;
    dprintf("\n=== Running MATInit Tests ===\n");
    
    res += MATInit_test_basic();
    res += MATInit_test_buddy();
    res += MATInit_test_alignment();
    res += MATInit_test_zones();
    res += MATInit_test_boundaries();
    res += MATInit_test_segment1_exclusive();
    res += MATInit_test_segment2_full_range();
    res += MATInit_test_exhaustion_boundaries();

    if (res == 0)
        dprintf("\n✅ All MATInit tests passed!\n");
    else
        dprintf("\n❌ Some MATInit tests failed (%d errors).\n", res);

    return res;
}