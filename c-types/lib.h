#ifndef LIB2_H_INCLUDED
#define LIB2_H_INCLUDED

void ints(char c, short d, int e, long f) {}
void uints(unsigned char c, unsigned short d, unsigned int e, unsigned long f) {}
void doubles(float a, double b) {}


typedef struct {
  int a;
  const double b;
} MyStruct;

void struct_by_value(MyStruct s);
void struct_by_pointer(MyStruct* s);


typedef union {
  const int a;
  MyStruct b;
  float c;
} MyUnion;

void union_by_value(MyUnion u);
void union_by_pointer(MyUnion* u);


typedef int  (*MyFun)(int);

void  accept_fun(MyFun f);
MyFun supply_fun();


void pass_string(char* str);
char* return_string();
int copy_string(char* str, int size);





#include <stdlib.h>
#include <stddef.h>




void pass_pointer(void*, size_t size);

extern char* global_string;


//*/

/*
void signed_int(char c, short d, int e, long f) {}
void unsigned_int(unsigned char c, unsigned short d, unsigned int e, unsigned long f){}


void doubles(float a, double b) {}


typedef struct { 
  int a;
  double b;
} MyStruct;

void structs(MyStruct s) {}


typedef union {
  int a;
  MyStruct b;
  float c;
} MyUnion;

void unions(MyUnion u) {}
*/


#endif


