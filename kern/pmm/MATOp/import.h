#ifndef _KERN_PMM_MATOP_IMPORT_H_
#define _KERN_PMM_MATOP_IMPORT_H_

#ifdef _KERN_

unsigned int get_nps(void);
unsigned int at_is_norm(unsigned int page_index);
unsigned int at_is_allocated(unsigned int page_index);
void at_set_allocated(unsigned int page_index, unsigned int allocated);
unsigned int at_get_order(unsigned int page_index);
unsigned int at_get_segment(unsigned int page_index);  // New

void at_list_add(unsigned int order, unsigned int page_index);
void at_list_add_segment(unsigned int order, unsigned int page_index, unsigned int segment);  // New
void at_list_remove(unsigned int order, unsigned int page_index);
void at_list_remove_segment(unsigned int order, unsigned int page_index, unsigned int segment);  // New
int get_free_list_head(unsigned int order);
int get_free_list_head_segment(unsigned int order, unsigned int segment);  // New

#endif  /* _KERN_ */
#endif  /* !_KERN_PMM_MATOP_IMPORT_H_ */