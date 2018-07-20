import konan.worker.freeze
import kotlinx.cinterop.*
import lib.*


fun main(args: Array<String>) {
//  callRef()
//  callValue()

  myFun()

  println("The magic indeed")
}


fun callRef() {
  memScoped {
    val cStruct = alloc<MyStruct>()
    cStruct.a = 42
    cStruct.b = 3.14

    struct_by_pointer(cStruct.ptr)


    val cUnion = alloc<MyUnion>()
    cUnion.b.a = 5
    cUnion.b.b = 2.7182

    union_by_pointer(cUnion.ptr)
  }
}


fun callValue() {
  val cStruct = cValue<MyStruct> {
    a = 42
    b = 3.14
  }
  struct_by_value(cStruct)

  val cUnion = cValue<MyUnion> {
    b.a = 5
    b.b = 2.7182
  }

  union_by_value(cUnion)
}


fun callMix() {
  val cStruct = cValue<MyStruct> {
    a = 42
    b = 3.14
  }

  memScoped {
    struct_by_pointer(cStruct.ptr)
  }
}

fun callMix2() {
  memScoped {
    val cStruct = alloc<MyStruct>()
    cStruct.a = 42
    cStruct.b = 3.14

    struct_by_value(cStruct.readValue())
  }
}

object Q {
  val z = -33
}

fun myFun() {
  val cPointer = staticCFunction<Int, Int> { it + 1 + Q.z }
  accept_fun(cPointer)

  val functionFromC = supply_fun() ?: error("No function is returned")
  functionFromC.invoke(42)

  accept_fun(cPointer)
}

