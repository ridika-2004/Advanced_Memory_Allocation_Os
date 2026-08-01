#include <lib/x86.h>
#include "import.h"

unsigned int alloc_page (unsigned int proc_index, unsigned int vaddr, unsigned int perm)
{
    unsigned int page_index;
    unsigned int ptbl;
    page_index = container_alloc(proc_index);
    if(page_index == 0) return MagicNumber;
    ptbl = map_page(proc_index, vaddr, page_index, perm);
    return ptbl;
}

unsigned int alloc_mem_quota (unsigned int id, unsigned int quota)
{
    unsigned int child;
    child = container_split (id, quota);
    return child;
}