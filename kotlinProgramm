fun main() {
    var input = 2147483647
    val output = mutableListOf<Int>(0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
    var sign = 0
    val subtract = listOf<Int>(
        1000000000, 100000000,
        10000000, 1000000,
        100000, 10000,
        1000, 100,
        10
    )
    var result = 0
    var tempSubtraction = 0
    var i = 0

    if (input < 0) {
        sign = 1
        input *= -1
    }
    while (i < 9) {
        result = 0
        tempSubtraction = input - subtract[i]
        while (tempSubtraction >= 0) {
            input -= subtract[i]
            result++
            tempSubtraction -= subtract[i]
        }
        output[i] = result
        i++
    }
    output[9] = input
}
