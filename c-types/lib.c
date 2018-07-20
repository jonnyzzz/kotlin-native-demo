#include "lib.h"
#include "stdio.h"

int foo() {

  return 42;

}


void struct_by_value(MyStruct s) {
    struct_by_pointer(&s);
}

void struct_by_pointer(MyStruct *s) {
    printf("struct: %d %f\n", s->a, s->b);
}

void union_by_value(MyUnion u) {
    union_by_pointer(&u);
}

void union_by_pointer(MyUnion *u) {
    printf("union: %d %f\n", u->a, u->c);
    struct_by_pointer(&u->b);
}



void accept_fun(MyFun f) {
    printf("accept_fun : %d", f(42));
}

int theFun(int v) {
    return v*v + v + 1;
}

MyFun supply_fun() {
    return theFun;
}
