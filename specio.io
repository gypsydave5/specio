

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

// Loads the spec and lib files - lib files first

specDir := Directory with(Directory currentWorkingDirectory .. "/spec")
libDir := Directory with(Directory currentWorkingDirectory .. "/lib")

libDir filesWithExtension("io") foreach(file,
    doFile(file path)
)

specDir filesWithExtension("io") foreach(file,
    if (file path containsSeq("_spec.io"),
        doFile(file path)
    )
)
