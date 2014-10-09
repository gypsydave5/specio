fibonacci := method(number,
    i := 1
    a := 0
    b := 1
    while (number > i,
        next_fib := a + b
        a = b
        b = next_fib
        i = i + 1
    )
    a
)

