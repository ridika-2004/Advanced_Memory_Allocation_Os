#include <lib/debug.h>
#include <lib/types.h>
#include <lib/monitor.h>
#include <lib/trap.h>
#include <lib/x86.h>

/* VMM Layer Exports */
#include <vmm/MPTInit/export.h>
#include <vmm/MPTNew/export.h>

#ifdef TEST
extern int  test_MATIntro(void);
extern int  test_MATInit(void);
extern int  test_MATOp(void);
extern int  MATOp_test_superpage_advanced(void); 
extern bool test_MContainer(void);
extern int  test_MPTComm(void); 
#endif

extern void pmem_init(unsigned int mbi_addr);
extern void container_init(unsigned int mbi_addr);

static void kern_main(uintptr_t mbi_addr)
{
    KERN_DEBUG("In kernel main.\n\n");

#ifdef TEST
    /* 1. Physical Memory Tests */
    pmem_init((unsigned int)mbi_addr);
    test_MATInit();
    test_MATOp();

    /* 2. Container Tests */
    container_init((unsigned int)mbi_addr);
    test_MContainer();

    /* 3. Virtual Memory Tests */
    paging_init(mbi_addr);

    dprintf("Testing the MPTComm layer (Superpage & Heap foundation)...\n");

    if (test_MPTComm() == 0)
        dprintf("MPTComm tests passed!\n");

    dprintf("\nAll tests completed successfully.\n");

    /* Exit QEMU instead of entering the monitor */
    outw(0x604, 0x2000);

    /* Safety: should never reach here */
    while (1)
        ;

#else
    paging_init(mbi_addr);
    monitor(NULL);
#endif
}

void kern_init(uintptr_t mbi_addr)
{
    pmem_init((unsigned int)mbi_addr);
    KERN_DEBUG("Kernel initialized.\n");
    kern_main(mbi_addr);
}
