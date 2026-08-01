#include <lib/debug.h>
#include <pmm/MContainer/export.h>
#include <vmm/MPTOp/export.h>
#include "export.h"
#include <lib/x86.h>
#include <vmm/MPTNew/export.h> 
#include <pmm/MContainer/export.h>

#define NUM_IDS 64
int MPTComm_test1()
{
    unsigned int i;
    for (i = 0; i < 1024; i++) {
        if (i < 256 || i >= 960) {
            if (get_ptbl_entry_by_va(10, i * 4096 * 1024) !=
                i * 4096 * 1024 + 259) {
                dprintf("test 1.1 failed (i = %d): (%d != %d)\n",
                        i,
                        get_ptbl_entry_by_va(10, i * 4096 * 1024),
                        i * 4096 * 1024 + 259);
                return 1;
            }
        }
    }
    dprintf("test 1 passed.\n");
    return 0;
}

int MPTComm_test2()
{
    unsigned int vaddr = 300 * 4096 * 1024;
    // We split container 0, which creates ID 1 with a small quota
    unsigned int chid = container_split(0, 100); 
    
    alloc_ptbl(chid, vaddr);
    if (get_pdir_entry_by_va(chid, vaddr) == 0) {
        dprintf("test 2.1 failed: (%d == 0)\n", get_pdir_entry_by_va(chid, vaddr));
        return 1;
    }
    if (get_ptbl_entry_by_va(chid, vaddr) != 0) {
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry_by_va(chid, vaddr));
        return 1;
    }
    free_ptbl(chid, vaddr);
    if (get_pdir_entry_by_va(chid, vaddr) != 0) {
        dprintf("test 2.3 failed: (%d != 0)\n", get_pdir_entry_by_va(chid, vaddr));
        return 1;
    }
    dprintf("test 2 passed.\n");
    return 0;
}

/**
 * Superpage & Quota Integration Test
 * Corrected to use the dynamic ID from container_split.
 */
int MPTComm_test_own()
{
    unsigned int vaddr = 0x40000000; 
    unsigned int quota = 2048;       // Enough for superpages
    
    dprintf("Starting Superpage & Quota Integration Test...\n");

    // FIX: Instead of hardcoding proc_id = 1, we use the ID returned here.
    // If test2 already ran, this will likely be ID 2.
    unsigned int proc_id = container_split(0, quota);
    
    if (proc_id == 0 || proc_id >= NUM_IDS) {
        dprintf("Superpage Test Failed: Invalid proc_id returned from split.\n");
        return 1;
    }

    // 2. Test Superpage Allocation
    unsigned int pindex = alloc_superpage(proc_id, vaddr);
    if (pindex == 0) {
        dprintf("Superpage Test Failed: Could not allocate 4MB block for ID %u.\n", proc_id);
        return 1;
    }

    // 3. Verify Hardware Bit (PS) in the Page Directory
    unsigned int pde = get_pdir_entry_by_va(proc_id, vaddr);
    if (!(pde & 0x80)) { 
        dprintf("Superpage Test Failed: PS bit not set in PDE (0x%x).\n", pde);
        return 1;
    }
    dprintf("Verified: PDE for ID %u at 0x%08x has PS bit set.\n", proc_id, vaddr);

    // 4. Verify Quota Usage (1 Superpage = 1024 pages)
    if (container_get_usage(proc_id) != 1024) {
        dprintf("Superpage Test Failed: Usage (%d) != 1024.\n", container_get_usage(proc_id));
        return 1;
    }

    // 5. Test Superpage Freeing
    free_ptbl(proc_id, vaddr);
    
    // 6. Verify Quota Recovery
    if (container_get_usage(proc_id) != 0) {
        dprintf("Superpage Test Failed: Usage after free (%d) != 0.\n", container_get_usage(proc_id));
        return 1;
    }

    dprintf("Superpage & Quota Integration Test passed!\n");
    return 0;
}

int test_MPTComm()
{
    return MPTComm_test1() + MPTComm_test2() + MPTComm_test_own();
}