#include <lib/x86.h>
#include "import.h"

#define VA_PDIR_MASK 0xFFC00000
#define VA_PTBL_MASK 0x3FF000
#define VM_USERLO  0x40000000
#define VM_USERHI  0xF0000000
#define PT_PERM_PWG (PTE_P | PTE_W | PTE_G)
#define PT_PERM_PW (PTE_P | PTE_W)
#define PTE_PS 0x80 //

/**
 * Raw Page Directory Entry Setter
 * This allows us to set the PS (0x80) bit for 4MB superpages.
 */
void set_pde(unsigned int proc_index, unsigned int pde_index, unsigned int entry)
{
    // Access the global Page Directory Pool
    // In most CertiKOS labs, this is PDirPool[proc_index][pde_index]
    PDirPool[proc_index][pde_index] = entry;
}
// Add this to kern/vmm/MPTOp/MPTOp.c
void set_pde_full_by_va(unsigned int proc_index, unsigned int vaddr, unsigned int entry)
{
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    // Call the lower level set_pde or set_pdir_entry 
    // but ensure it passes the WHOLE entry
    set_pde(proc_index, pde_index, entry); 
}
unsigned int get_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    unsigned int pde = get_pdir_entry(proc_index, pde_index);

    if ((pde & PTE_P) == 0) {
        return 0;
    }

    // NEW: If PS bit is set, the PDE is the translation for the whole 4MB region
    if (pde & PTE_PS) {
        return pde;
    }

    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
    return get_ptbl_entry(proc_index, pde_index, pte_index);
}         

unsigned int get_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    return get_pdir_entry(proc_index, pde_index);
}

void rmv_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    unsigned int pde = get_pdir_entry(proc_index, pde_index);

    // If entry is missing or is a Superpage PDE, we don't remove a PTE
    if ((pde & PTE_P) == 0 || (pde & PTE_PS)) {
        return;
    }

    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
    rmv_ptbl_entry(proc_index, pde_index, pte_index);
}

void rmv_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    rmv_pdir_entry(proc_index, pde_index);
}

void set_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr, unsigned int page_index, unsigned int perm)
{
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
    set_ptbl_entry(proc_index, pde_index, pte_index, page_index, perm);
}

void set_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr, unsigned int page_index)
{
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    set_pdir_entry(proc_index, pde_index, page_index);
}   

void idptbl_init(unsigned int mbi_adr)
{
    container_init(mbi_adr);
    unsigned int addr;
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
        if (addr < VM_USERLO || addr >= VM_USERHI) {
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PWG);
        } else {
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
        }
    }
}
