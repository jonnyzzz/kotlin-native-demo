import file.foo
import kotlinx.cinterop.memScoped

fun main(args: Array<String>) {
  println("Hello!")

  memScoped {
    foo(null)
  }
}

