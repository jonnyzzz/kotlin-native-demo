package com.jetbrains.tutorial


object Object {
  val field = "A"
}

class Clazz {
  fun memberFunction() : Long = 42
}

fun forIntegers(b: Byte, s: Short, i: Int, l:Long) { }
fun forFloats(f: Float, d: Double) { }

fun strings(str: String) : String { 
  return "That is '$str' from C"
}

val globalString = "A global String"


