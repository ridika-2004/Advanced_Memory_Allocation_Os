#ifndef _KERN_PMM_MATINTRO_H_
#define _KERN_PMM_MATINTRO_H_

struct ATStruct {
    unsigned int perm;
    unsigned int allocated;
    unsigned int order;
    unsigned int segment;  // New field: 1 for segment 1, 2 for segment 2
    int next;
    int prev;
};

#ifdef _KERN_

extern struct ATStruct AT[1 << 20];

// Existing functions
unsigned int get_nps(void);
unsigned int at_get_order(unsigned int page_index);
void set_nps(unsigned int nps);
unsigned int at_is_norm(unsigned int page_index);
void at_set_perm(unsigned int page_index, unsigned int perm);
unsigned int at_is_allocated(unsigned int page_index);
void at_set_allocated(unsigned int page_index, unsigned int allocated);
unsigned int at_get_segment(unsigned int page_index);  // New

void pmm_init_freelists(void);
void at_list_add(unsigned int order, unsigned int page_index);
void at_list_add_segment(unsigned int order, unsigned int page_index, unsigned int segment);  // New
void at_list_remove(unsigned int order, unsigned int page_index);
void at_list_remove_segment(unsigned int order, unsigned int page_index, unsigned int segment);  // New
int get_free_list_head(unsigned int order);
int get_free_list_head_segment(unsigned int order, unsigned int segment);  // New

#endif  /* _KERN_ */

#endif