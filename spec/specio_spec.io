// Styling the tests

assertEqual("The method redText creates a string that adds the red ansi escape",
        redText("This should be red"),
        "[31mThis should be red[0m"
    )

assertEqual("The method greenText creates a string that adds the green ansi escape",
        greenText("This should be green"),
        "[32mThis should be green[0m"
    )

assertEqual("The method testPassed creates a string and declares it to have passed",
    testPassed("Somewhere, just to the right, it says PASS"),
    "Somewhere, just to the right, it says PASS : PASS"
    )

assertEqual("the method testFailed appends FAILED to the end of a sequence",
    testFailed("Oh no - I think this thing over here says FAIL"),
    "Oh no - I think this thing over here says FAIL : FAIL"
    )

assertEqual("failing tests are red and have FAIL at the end",
    assertEqual("IGNORE: Testing a failing test", 1 + 1, 1),
    "[31mIGNORE: Testing a failing test : FAIL[0m\n\tExpected: 1\n\tBut returned: 2"
    )

assertEqual("passing tests are green and have PASS at the end",
    assertEqual("IGNORE: Testing a passing test", 1 + 1, 2),
    "[32mIGNORE: Testing a passing test : PASS[0m"
    )

assertEqual("One and one is two", 1 + 1, 2)

