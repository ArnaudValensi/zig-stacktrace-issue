#include <stdio.h>

void dump_stack_trace(void);

static void foo(int dump) {
    if (dump) {
        dump_stack_trace();
    }
}

int main(int argc, char **argv) {
    (void) argc;
    (void) argv;

    foo(1);
    return 0;
}
