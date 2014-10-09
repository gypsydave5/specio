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
