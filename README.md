| [*Makers Academy*](http://www.makersacademy.com) | Week 10 |
| ------------------------------------------------ | ------- |

#SPECIO
_Spec-io! Spec-io! Spec-I-O!_

!['Title Page'](http://gypsydave5.github.io/images/readme/specio.png)

####Overview
During week 10 at we were introduced to [Io], a dynamic, loosely-typed
prototypical landuage with much in common with both JavaScript and Ruby.

We were instructed to either generated the Fibonacci
sequence, or implement the Boris Bikes project, in Io.

However, we lacked a testing framework to perform BDD in. So I created Specio,
a very, very simple test framework for Io. And I'm happy to say some of the
other students used it.

####Technologies used

- [Io]

####Installation

You will need [Io] to use Specio. Please see the [installation instuctions] for
your os.

Clone the repo with the following command (you will need to install [Git]):
```shell
$ git clone git@github.com:gypsydave5/specio.git
```

####Use

The Specio executable will load test files from a `spec` directory, and run them
on files in a `lib` directory á la [RSpec]. To execute in \*nix move the
`specio` file over to the project directory and run `./specio`. You may wish to
place the `specio` executable, or a symlink to it, in one of your path
directories..

####Writing tests

Tests in Specio are written in the following simple format:

```io
assertEqual("Describe the test", < method being tested >, < expected value >)
```

Specio will only load tests from files ending in `_spec.io`, and lib files
ending in `.io`.

####Testing Specio

Unsurprisingly Specio is tested in Specio. Run `./specio` in the project
directory to see them run.

There is an example project in the `lib` directory which calculates the
Fibonacci numbers. The spec for that wiil run as well; there is an example of
a failing test for demonstration purposes.

####To Do

- Runs when no spec files present
- Add a summary header and footer
- Run individual test files and tests within files
- Expand the DSL to use BDD-style expectations
- Installation script
- Handle different assertions (i.e. `notEqual`)

#### Contributing to this project

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

[Io]: http://iolanguage.org/
[installation instuctions]: https://github.com/stevedekorte/io#installing
[RSpec]: http://rspec.info/
