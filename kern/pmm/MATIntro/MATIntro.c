#include <lib/gcc.h>
#include "export.h"

#define MAX_ORDER 11
#define NUM_SEGMENTS 2

static unsigned int NUM_PAGES;
struct ATStruct AT[1 << 20];
static int free_list[MAX_ORDER][NUM_SEGMENTS + 1];  // 2D array: [order][segment]

void pmm_init_freelists(void) {
    for (int i = 0; i < MAX_ORDER; i++) {
        for (int j = 0; j <= NUM_SEGMENTS; j++) {
            free_list[i][j] = -1;
        }
    }
}

unsigned int get_nps(void) { return NUM_PAGES; }
void set_nps(unsigned int nps) { NUM_PAGES = nps; }

unsigned int at_is_norm(unsigned int page_index) {
    return (page_index < NUM_PAGES && AT[page_index].perm > 1);
}

void at_set_perm(unsigned int page_index, unsigned int perm) {
    if (page_index < NUM_PAGES) {
        AT[page_index].perm = perm;
        AT[page_index].allocated = 0;
    }
}

unsigned int at_is_allocated(unsigned int page_index) {
    return (page_index < NUM_PAGES && AT[page_index].allocated != 0);
}

void at_set_allocated(unsigned int page_index, unsigned int allocated) {
    if (page_index < NUM_PAGES)
        AT[page_index].allocated = allocated;
}

unsigned int at_get_segment(unsigned int page_index) {
    if (page_index < NUM_PAGES)
        return AT[page_index].segment;
    return 0;
}

int get_free_list_head(unsigned int order) {
    if (order >= MAX_ORDER) return -1;
    // For backward compatibility, return segment 2 head
    return free_list[order][2];
}

int get_free_list_head_segment(unsigned int order, unsigned int segment) {
    if (order >= MAX_ORDER || segment > NUM_SEGMENTS) return -1;
    return free_list[order][segment];
}

unsigned int at_get_next(unsigned int page_index) {
    return AT[page_index].next;
}

unsigned int at_get_prev(unsigned int page_index) {
    return AT[page_index].prev;
}

unsigned int at_get_order(unsigned int page_index) {
    if (page_index < NUM_PAGES)
        return AT[page_index].order;
    return -1;
}

void at_list_add(unsigned int order, unsigned int page_index) {
    at_list_add_segment(order, page_index, AT[page_index].segment);
}

void at_list_add_segment(unsigned int order, unsigned int page_index, unsigned int segment) {
    if (order >= MAX_ORDER || page_index >= NUM_PAGES || segment > NUM_SEGMENTS) return;
    if (!at_is_norm(page_index)) return;

    int head = free_list[order][segment];
    AT[page_index].order = order;
    AT[page_index].segment = segment;
    AT[page_index].next  = head;
    AT[page_index].prev  = -1;
    if (head != -1) AT[head].prev = (int)page_index;
    free_list[order][segment] = (int)page_index;
}

void at_list_remove(unsigned int order, unsigned int page_index) {
    at_list_remove_segment(order, page_index, AT[page_index].segment);
}

void at_list_remove_segment(unsigned int order, unsigned int page_index, unsigned int segment) {
    if (order >= MAX_ORDER || page_index >= NUM_PAGES || segment > NUM_SEGMENTS) return;

    int n = AT[page_index].next;
    int p = AT[page_index].prev;

    if (p != -1) AT[p].next = n;
    else free_list[order][segment] = n;

    if (n != -1) AT[n].prev = p;

    AT[page_index].next = -1;
    AT[page_index].prev = -1;
}