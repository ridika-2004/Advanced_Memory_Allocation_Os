#include <lib/x86.h>
#include <lib/debug.h>

#include "import.h"

#define VM_USERLO 0X40000000
#define VM_USERHI 0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

// Standard x86 Paging Flags
#define PTE_P    0x001   // Present
#define PTE_W    0x002   // Writeable
#define PTE_U    0x004   // User access
#define PTE_PS   0x080   // Page Size bit (Bit 7) - Crucial for 4MB pages

void pdir_init(unsigned int mbi_adr)
{
    int i, j;
    idptbl_init(mbi_adr);

    for(i = 0; i < NUM_IDS; i++){
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
        set_pdir_entry_identity(i, j);
      }
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
        rmv_pdir_entry(i, j);
      }
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
        set_pdir_entry_identity(i, j);
      }
    }
}

/**
 * Standard 4KB Page Table Allocation
 */
unsigned int alloc_ptbl(unsigned int proc_index, unsigned int vadr)
{
  unsigned int addr;
  unsigned int page_index;
  page_index = container_alloc(proc_index);
  if(page_index == 0) return 0;
  
  set_pdir_entry_by_va(proc_index, vadr, page_index);
  
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
    *(unsigned int *)addr = 0;
  }
  return page_index;
}

/**
 * Updated free_ptbl: Handles both 4KB Page Tables and 4MB Superpages.
 */
void free_ptbl(unsigned int proc_index, unsigned int vadr)
{
  unsigned int pdir_entry = get_pdir_entry_by_va(proc_index, vadr);
  
  if (!(pdir_entry & PTE_P)) {
      return;
  }

  // Check the PS bit (Bit 7) to see if this is a 4MB superpage
  if (pdir_entry & PTE_PS) {
      unsigned int page_index = pdir_entry >> 12;
      
      // Remove the entry from the Page Directory
      rmv_pdir_entry_by_va(proc_index, vadr);
      
      // Free the 1024-page block in the container/buddy system
      container_free(proc_index, page_index);
      
      dprintf("VMM: Superpage at VA 0x%08x (PI %u) freed.\n", vadr, page_index);
      return;
  }

  // Default: Standard Page Table (4KB)
  unsigned int page_index = pdir_entry >> 12;
  rmv_pdir_entry_by_va(proc_index, vadr);
  container_free(proc_index, page_index);
}



/**
 * NEW: Superpage (4MB) Allocation
 * This is what your MPTComm_test_own is looking for!
 */

unsigned int alloc_superpage(unsigned int proc_index, unsigned int vadr)
{
    unsigned int pindex = container_alloc_superpage(proc_index);
    if (pindex == 0) return 0;

    // Calculate the PDE index (top 10 bits of the virtual address)
    unsigned int pde_index = vadr >> 22;

    // Construct the FULL 32-bit entry
    // (pindex << 12) provides the base address
    // 0x87 provides Present (1), Write (2), User (4), and Page Size (128)
    unsigned int pde_entry = (pindex << 12) | 0x87; 

    // Use our new raw setter
    set_pde(proc_index, pde_index, pde_entry);

    dprintf("VMM: Superpage allocated for proc %u at PDE %u (Value: 0x%08x)\n", 
            proc_index, pde_index, pde_entry);

    return pindex;
}


