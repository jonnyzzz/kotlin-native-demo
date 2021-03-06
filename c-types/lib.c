#include "lib.h"
#include "stdio.h"
#include <string.h>

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
    printf("accept_fun 1: %d\n", f(42));
    printf("accept_fun 2: %d\n", f(42));
    printf("accept_fun 3: %d\n", f(42));
}

int theFun(int v) {
    printf("theFun: %d\n", v);
    return v*v + v + 1;
}

MyFun supply_fun() {
    return theFun;
}


void pass_pointer(void* x, size_t size) {
}

char* global_string = "AAAAA";




void pass_string(char* str) { }
char* return_string() { return "AAA"; }
int copy_string(char* ptr, int size) {
    char str[] = "BBB";
    strcpy(ptr, str);

    return 0;
}

