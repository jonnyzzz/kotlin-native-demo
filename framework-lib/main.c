#include "demo_api.h"
#include "stdio.h"

int main(int argc, char** argv) {
  demo_ExportedSymbols* lib = demo_symbols();

  lib->kotlin.root.demo.forIntegers(1, 2, 3, 4);
  lib->kotlin.root.demo.forFloats(1.0f, 2.0);
  
  const char* str = "Hello from Native!";
  const char* response = lib->kotlin.root.demo.strings(str);
  printf("in: %s\nout:%s\n", str, response);
  lib->DisposeString(response);

  demo_kref_demo_DemoClazz newInstance = lib->kotlin.root.demo.DemoClazz.DemoClazz();
  long x = lib->kotlin.root.demo.DemoClazz.memberFunction(newInstance, 42);
  lib->DisposeStablePointer(newInstance.pinned);

  printf("DemoClazz returned %ld\n", x);

  return 0;
}


