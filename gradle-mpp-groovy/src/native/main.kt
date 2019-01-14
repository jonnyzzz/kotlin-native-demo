import file.foo
import kotlinx.cinterop.IntVar
import kotlinx.cinterop.alloc
import kotlinx.cinterop.memScoped
import kotlinx.cinterop.ptr
import kotlinx.cinterop.value

fun main(args: Array<String>) {
  println("Hello!")

  memScoped {
    val q = alloc<IntVar>()
    q.value = 123

    val z = foo(q.ptr)

    println(z)
    println(q.value)
  }
}

