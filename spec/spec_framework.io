assertEqual := method(description, test, expectation,
    if(test == expectation,
    ("[32m" .. description .. " : PASS" .. "[0m") println,
    ("[31m" .. description .. " : FAIL[0m\n\tExpected: " .. expectation .. "\n\tBut returned: " .. test ) println
    )
)

assertTrue := method(description, test
    if(test == true,
    description with(" : PASS") println,
    description with(" : FAIL") println
    )
)

doFile("lib/fibonacci.io")
doFile("spec/fibonacci_spec.io")
