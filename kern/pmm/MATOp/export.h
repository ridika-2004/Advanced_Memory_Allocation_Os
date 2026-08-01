#ifndef _KERN_PMM_MATOP_H_
#define _KERN_PMM_MATOP_H_

#ifdef _KERN_

unsigned int palloc(void);
void pfree(unsigned int pindex);

// ADD THESE: Superpage Allocator Interface
unsigned int palloc_superpage(void);
void pfree_superpage(unsigned int pindex);

// ADD THESE: For testing and internal buddy logic
int palloc_order(unsigned int order); 
int MATOp_test_superpage(void); 

#endif  /* _KERN_ */
#endif  /* !_KERN_PMM_MATOP_H_ */