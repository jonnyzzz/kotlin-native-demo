import kotlinx.cinterop.*
import lib.*


fun main(args: Array<String>) {
  callC()
  println("The magic indeed")
}


fun callC() {
  memScoped {
    val cStruct = alloc<MyStruct>()
    cStruct.a = 42
    cStruct.b = 3.14

    struct_by_pointer(cStruct.ptr)
    struct_by_value(cStruct.readValue())


    val cUnion = alloc<MyUnion>()
    cUnion.b.a = 5
    cUnion.b.b = 2.7182

    union_by_pointer(cUnion.ptr)
    union_by_value(cUnion.readValue())
  }
}


