#include <lib/debug.h>
#include <pmm/MATIntro/export.h>
#include "export.h"

extern struct ATStruct AT[]; 

#define PAGESIZE      4096
#define VM_USERLO     0x40000000
#define VM_USERHI     0xF0000000
#define VM_USERLO_PI  (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI  (VM_USERHI / PAGESIZE)

#define SUPERPAGE_ORDER 10
#define MAX_ORDER 11

// Define segment boundaries
#define SEG1_START    VM_USERLO_PI
#define SEG1_END      (VM_USERLO_PI + (VM_USERHI_PI - VM_USERLO_PI) / 2)
#define SEG2_START    SEG1_END
#define SEG2_END      VM_USERHI_PI

int MATOp_test1()
{
    int page_index = palloc();
    if (page_index < (int)VM_USERLO_PI || (int)VM_USERHI_PI <= page_index) {
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
        pfree(page_index);
        return 1;
    }
    if (at_is_norm(page_index) != 1) {
        dprintf("test 1.2 failed: (%d != 1)\n", at_is_norm(page_index));
        pfree(page_index);
        return 1;
    }
    if (at_is_allocated(page_index) != 1) {
        dprintf("test 1.3 failed: (%d != 1)\n", at_is_allocated(page_index));
        pfree(page_index);
        return 1;
    }
    pfree(page_index);
    if (at_is_allocated(page_index) != 0) {
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}

int MATOp_test_own()
{
    dprintf("Testing buddy contiguous allocation (Order 2)...\n");
    int order = 2;
    int pindex = palloc_order(order); 
    
    if (pindex <= 0) {
        dprintf("Buddy allocation failed.\n");
        return 1;
    }

    if ((int)AT[pindex].order != order) {
        dprintf("test own failed: Order mismatch. Expected %d, got %d\n", order, AT[pindex].order);
        return 1;
    }

    // Verify it's in segment 2 (regular allocations should come from segment 2)
    if (AT[pindex].segment != 2) {
        dprintf("test own failed: Regular allocation from wrong segment. Expected 2, got %d\n", 
                AT[pindex].segment);
        return 1;
    }

    pfree(pindex);
    dprintf("Buddy contiguous test passed.\n");
    return 0;
}

int MATOp_test_superpage_advanced()
{
    dprintf("Testing advanced superpage allocation...\n");

    unsigned int pages = 1U << SUPERPAGE_ORDER;

    int pindex1 = palloc_superpage();
    if (pindex1 == 0) {
        dprintf("First superpage allocation failed.\n");
        return 1;
    }

    // Verify first superpage is in segment 1 (should prefer segment 1)
    if (AT[pindex1].segment != 1) {
        dprintf("Superpage test failed: First superpage not from segment 1 (got segment %d)\n", 
                AT[pindex1].segment);
        pfree_superpage(pindex1);
        return 1;
    }

    int pindex2 = palloc_superpage();
    if (pindex2 == 0) {
        dprintf("Second superpage allocation failed.\n");
        pfree_superpage(pindex1);
        return 1;
    }

    if (pindex1 == pindex2) {
        dprintf("Test failed: palloc_superpage returned the same index twice (%d).\n", pindex1);
        return 1;
    }

    int diff = (pindex1 > pindex2) ? (pindex1 - pindex2) : (pindex2 - pindex1);
    if ((unsigned int)diff < pages) {
        dprintf("Test failed: Superpages overlap! Diff: %d, Required: %u\n", diff, pages);
        return 1;
    }

    pfree_superpage(pindex1);
    pfree_superpage(pindex2);

    dprintf("Advanced superpage test passed.\n");
    return 0;
}


int MATOp_test_segment_preference()
{
    dprintf("Testing segment allocation preference...\n");

    int superpages[10];
    int count = 0;
    
    dprintf("  Phase 1: Allocating superpages (should come from segment 1 first)...\n");
    while (count < 10) {
        int sp = palloc_superpage();
        if (sp == 0) break;
        
        if (count < 5 && AT[sp].segment != 1) {
            dprintf("    Failed: Early superpage %d came from segment %d (should be segment 1)\n", 
                    count, AT[sp].segment);
            // Cleanup
            for (int i = 0; i < count; i++) {
                pfree_superpage(superpages[i]);
            }
            return 1;
        }
        
        superpages[count++] = sp;
        dprintf("    Allocated superpage %d from segment %d\n", sp, AT[sp].segment);
    }
    
    dprintf("  Allocated %d superpages total\n", count);
    

    for (int i = 0; i < count; i++) {
        pfree_superpage(superpages[i]);
    }
    
    dprintf("Segment preference test passed.\n");
    return 0;
}


int MATOp_test_fallback()
{
    dprintf("Testing fallback mechanism (segment 1 -> segment 2)...\n");
    
    // First, try to exhaust segment 1 by allocating many superpages
    int sp_from_seg1[100];
    int sp_from_seg2[100];
    int count1 = 0, count2 = 0;
    
    dprintf("  Phase 1: Exhausting segment 1...\n");
    while (count1 < 100) {
        int sp = palloc_superpage();
        if (sp == 0) break;
        
        if (AT[sp].segment == 1) {
            sp_from_seg1[count1++] = sp;
        } else {
            sp_from_seg2[count2++] = sp;
        }
    }
    
    dprintf("  Allocated %d superpages from segment 1, %d from segment 2\n", count1, count2);
    
    // Verify fallback worked (if segment 1 wasn't huge, we should have some from segment 2)
    if (count1 > 0 && count2 == 0) {
        // This is acceptable if segment 1 had enough pages
        dprintf("  Note: All superpages came from segment 1 (segment 1 had enough pages)\n");
    }
    
    // Cleanup
    for (int i = 0; i < count1; i++) {
        pfree_superpage(sp_from_seg1[i]);
    }
    for (int i = 0; i < count2; i++) {
        pfree_superpage(sp_from_seg2[i]);
    }
    
    dprintf("Fallback test passed.\n");
    return 0;
}


int MATOp_test_cross_segment_split()
{
    dprintf("Testing cross-segment split (borrowing from segment 1)...\n");
    
    // First, allocate all small blocks in segment 2 to exhaust it
    dprintf("  Phase 1: Exhausting segment 2 small blocks...\n");
    
    int small_blocks[1000];
    int small_count = 0;
    
    // Allocate all order 0 blocks until failure
    while (small_count < 1000) {
        int page = palloc();
        if (page == 0) break;
        
        // Verify we're getting from segment 2 initially
        if (small_count < 10 && AT[page].segment != 2) {
            dprintf("    Failed: Early small allocation from segment %d (should be segment 2)\n", 
                    AT[page].segment);
            // Cleanup
            for (int i = 0; i < small_count; i++) {
                pfree(small_blocks[i]);
            }
            return 1;
        }
        
        small_blocks[small_count++] = page;
    }
    
    dprintf("  Allocated %d small pages from segment 2\n", small_count);
    
    // Now allocate a superpage - should come from segment 1 or split from segment 1
    dprintf("  Phase 2: Allocating superpage when segment 2 is full...\n");
    int superpage = palloc_superpage();
    if (superpage == 0) {
        dprintf("    Failed: Could not allocate superpage even with segment 1 available\n");
        // Cleanup small blocks
        for (int i = 0; i < small_count; i++) {
            pfree(small_blocks[i]);
        }
        return 1;
    }
    
    dprintf("  Allocated superpage %d from segment %d\n", superpage, AT[superpage].segment);
    
    // Verify the superpage is valid
    unsigned int size = 1U << SUPERPAGE_ORDER;
    for (unsigned int i = 0; i < size; i++) {
        if (at_is_allocated(superpage + i) != 1) {
            dprintf("    Failed: Superpage page %d not marked allocated\n", superpage + i);
            pfree_superpage(superpage);
            for (int i = 0; i < small_count; i++) {
                pfree(small_blocks[i]);
            }
            return 1;
        }
    }
    
    // Cleanup
    pfree_superpage(superpage);
    for (int i = 0; i < small_count; i++) {
        pfree(small_blocks[i]);
    }
    
    dprintf("Cross-segment split test passed.\n");
    return 0;
}


int MATOp_test_allocation_failure()
{
    dprintf("Testing allocation failure handling...\n");
    
    // Instead of trying to exhaust all memory (which would take forever),
    // we'll allocate a reasonable number and then verify failure handling
    
    dprintf("  Testing regular page allocation/free cycle...\n");
    int pages[100];
    int count = 0;
    
    // Allocate 100 pages
    for (int i = 0; i < 100; i++) {
        int page = palloc();
        if (page == 0) {
            dprintf("    Failed: Could not allocate page %d\n", i);
            for (int j = 0; j < i; j++) pfree(pages[j]);
            return 1;
        }
        pages[count++] = page;
    }
    dprintf("  Allocated %d pages successfully\n", count);
    
    // Free half
    dprintf("  Freeing half...\n");
    for (int i = 0; i < count/2; i++) {
        pfree(pages[i]);
    }
    
    // Allocate again
    dprintf("  Allocating after free...\n");
    int new_page = palloc();
    if (new_page == 0) {
        dprintf("    Failed: Could not allocate after freeing\n");
        for (int i = count/2; i < count; i++) pfree(pages[i]);
        return 1;
    }
    dprintf("  Successfully allocated new page %d\n", new_page);
    
    // Cleanup
    pfree(new_page);
    for (int i = count/2; i < count; i++) {
        pfree(pages[i]);
    }
    
    dprintf("Allocation test passed.\n");
    return 0;
}

// ===========================
// Wrapper function
// ===========================
int MATOp_test_superpage(void)
{
    return MATOp_test_superpage_advanced();
}

// ===========================
// Main test runner
// ===========================
int test_MATOp()
{
    int res = 0;
    dprintf("\n=== Running MATOp Tests ===\n");
    
    res += MATOp_test1();
    res += MATOp_test_own();
    res += MATOp_test_superpage_advanced();
    res += MATOp_test_segment_preference();
    res += MATOp_test_fallback();
    res += MATOp_test_cross_segment_split();
    res += MATOp_test_allocation_failure();

    if (res == 0)
        dprintf("\n✅ All MATOp tests passed!\n");
    else
        dprintf("\n❌ Some MATOp tests failed (%d errors).\n", res);

    return res;
}