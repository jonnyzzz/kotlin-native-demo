#include "lib.h"


int foo() {

  if(__builtin_available(macOS 10.12, iOS 9.0, tvOS 9.0, watchOS 2.0, *)) {
    return 256;
  }

  return 42;

}


