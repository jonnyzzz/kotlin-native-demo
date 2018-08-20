package demo


object Object {
  val field = "A"
}

interface Interface {
  fun iMember() {}
}

class Clazz : Interface {
  fun member(p: Int): Long? = 42
}

fun forIntegers(b: Byte, s: Short, i: Int, l: Long?) { }
fun forFloats(f: Float, d: Double?) { }

fun strings(str: String?) : String { 
  return "That is '$str' from C"
}


val global = "A global String"

typealias FunFunction = (String) -> String?

fun acceptFun(f: FunFunction) = f("Kotlin/Native rocks!")
fun supplyFun() : FunFunction = { "$it is cool!" }


