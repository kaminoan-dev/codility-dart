/**
    # Binary Gap

    A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at
    both ends in the binary representation of N.

    For example,
    The number 9 has binary representation 1001 and contains a binary gap of length 2.
    The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3.
    The number 20 has binary representation 10100 and contains one binary gap of length 1.
    The number 15 has binary representation 1111 and has no binary gaps.
    The number 32 has binary representation 100000 and has no binary gaps.

    Write a function:

    def solution(N)

    that, given a positive integer N, returns the length of its longest binary gap.
    The function should return 0 if N doesn't contain a binary gap.

    For example, given N = 1041 the function should return 5, because N has binary representation 10000010001 and so its
    longest binary gap is of length 5. Given N = 32 the function should return 0, because N has binary representation
    '100000' and thus no binary gaps.

    Write an efficient algorithm for the following assumptions:

    N is an integer within the range [1..2,147,483,647].

    Copyright 2009–2022 by Codility Limited. All Rights Reserved.
    Unauthorized copying, publication or disclosure prohibited.
 */
import 'dart:math' as math;

/** Determines the maximal 'binary gap' in an integer.

    :param N: [int] A positive integer (between 1 and maxint).
    :return: [int] The length of the longest sequence of zeros in the binary representation of the integer.

    Convert the int to a string of 0/1 chars.
    Loop through the chars in the string.
    When we see a zero, start the gap counter.
    When we see a one, compare with the biggest gap, and save the bigger; reset the gap counter.
    When we run out of characters, return the biggest gap.
 */
int solution(final int n) {
// Convert the number to a string containing '0' and '1' chars.
  final String binary = n.toRadixString(2);

  int gap = 0;
  int maxGap = 0;

  for (final String char in binary.split('')) {
    if (char == "0") {
      ++gap;
    } else {
      maxGap = math.max(gap, maxGap);
      gap = 0;
    }
  }

  return maxGap;
}
