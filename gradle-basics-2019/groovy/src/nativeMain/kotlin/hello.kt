fun main(args: Array<String>) {

  println("Hello Kotlin/Native!")



val p = listOf("a", "b", "a", "d").let {
  val set = it.distinct().mapIndexed { i, v -> v to i }.toMap()
  it.mapIndexed { i,v -> i to set.getValue(v) }
}.toMap()

  println(p)

}
