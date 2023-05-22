# Codility Training Lessons Solutions

Solutions to [Codility training lessons](https://app.codility.com/programmers/lessons/) written in Dart.

[Codility](https://www.codility.com/) is an online platform that provides coding challenges and assessments to help evaluate and improve programming skills. It is commonly used by employers to assess the technical abilities of job applicants or to provide training for their own development teams.

## About

The purpose of this repository is to provide Dart implementations of the solutions for the Codility training lessons, allowing Dart developers to learn and practice problem-solving skills on the Codility platform.

Please note that the solutions provided here may not be the only possible solutions to the problems and may not be the most optimal ones. They serve as a reference and starting point for learning and understanding the problem-solving concepts.

The solutions provided here are almost a direct "translation" from Python to Dart adapted from the repository available at [johnmee/codility](https://github.com/johnmee/codility).

## Test cases

The test cases follow a predictable methodology :
* The examples provided in the problem description are explicitly tested.

* During the the actual interview testing coming up with reasonable test cases, and determining the correct answers, is half the puzzle!
  * Passing the examples given is not enough. Every puzzle is subjected to:
    * 'simple' tests, not unlike the ones provided, and
    * 'medium' tests, which involve arrays/values of more significant size/length, and
    * 'maximal' tests which present inputs of the maximum size and complexity.

### Correctness tests

* An empty or zero test case is tested - the result is often not explicitly described, but will actually be there implicitly.
* A minimum test case - using just one input, or whatever is the absolute minimal conceivable input.
* A simple, or 'small' test case or two - just some basic, as you might reasonably anticipate, examples.
* Edge cases - test cases written to root out those awkward -off-by-one- scenarios that inevitably suck up 80% of the time required to devise a solution.

### Performance tests

* Not always, as the problem dictates, some medium sized test cases eg: ~100 - ~5000 length arrays.
* Always some 'extreme' test cases typically involving generating maximal random datasets.
* Worst case scenario is tested - the biggest possible numbers in the biggest result sets - with the intent to test the speed and space restraints.

## Notes

* You are safe to assume they won't test, mark you down for, failing to guard against the explicit assumptions described. 
  * So if it says N is 0..1000, they won't feed in an N=1001 just to see if you protected against it.

* The "Open reading material", at the top of each lesson, is worth reading before attempting the exercises as they are short and focus exactly on what you'll need to solve the following puzzles.

* During the actual interview testing/exam:
  * The report sent to the company is much more detailed than the one sent to the candidate: every edit and run is recorded and presented to the company (if you use the browser to build your solution).
  * If you are given multiple tasks, you are permitted to read them, and commence them, and submit them in any order.
  * Before submitting your solution, there is no feedback regarding it's efficiency; but it does affect your score, and report!


* Understanding the O factors reveals the nature of the optimal solution:
  * O(1) there is a formulaic solution
  * O(n) the solution has no nested loops and all happens in a single pass
  * O(n+m) the solution has no nested loops, and passes over n and m only once
  * O(n+n) the solution has no nested loops, but you can pass over the sequence twice
  * O(n*n) the solution has a loop through n nested inside a loop through n

## License

This repository is licensed under the [MIT License](LICENSE).

