// Styling the tests

assertEqual("The method red creates a string that adds the red ansi escape",
        red("This should be red"),
        "[31mThis should be red[0m"
    )

assertEqual("The method green creates a string that adds the green ansi escape",
        green("This should be green"),
        "[32mThis should be green[0m"
    )
