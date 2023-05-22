import 'package:test/test.dart';
import 'dart:math' as math;

/// Import the lessor to be tested.
import '../src/l2_odd-occurrences-in-array.dart';

void main() {
  group('Examples', () {
    test("Example 1 test", () {
      final List<int> arr = [9, 3, 9, 3, 9, 7, 9];
      expect(7, solution(arr));
    });
  });

  group('Simple', () {
    test("Simple test n=5", () {
      final List<int> arr = _generateArray(5, 4);
      expect(solution(arr), 4);
    });

    test("Simple test n=11", () {
      final List<int> arr = _generateArray(11, 4);
      expect(solution(arr), 4);
    });
    test("Simple test n=1", () {
      expect(solution([42]), 42);
    });

    test("small random test n=201", () {
      final List<int> arr = _generateArray(201, 42);
      expect(42, solution(arr));
    });
  });

  group('Medium', () {
    test("medium random test n=601", () {
      final List<int> arr = _generateArray(601, 4242);
      expect(4242, solution(arr));
    });

    test("medium random test n=2001", () {
      final List<int> arr = _generateArray(2001, 100);
      expect(100, solution(arr));
    });
  });

  group('Large', () {
    test("Large random test n=100,003", () {
      final List<int> arr = _generateArray(100003, 500000);
      expect(500000, solution(arr));
    });

    test("big random test n=999,999, multiple repetitions", () {
      final List<int> arr = _generateArray(100003, 700);
      expect(700, solution(arr));
    });

    test("big random test n=999,999", () {
      final List<int> arr = _generateArray(999999, 5000111222);
      expect(5000111222, solution(arr));
    });
  });
}

final int MAX_N = 1000000; // Max value in the array.
final int MAX_A = 1000000000; // Max length of the array.

/**
    Generate a list of sample data: random integers in pairs.

    :param L: the length of the list is double this int
    :param odd: the odd integer out

 * Generate a list of random ints half the size required.
 * Join it to a duplicate of itself.
 * Append the odd value.
 * Shuffle the array and return.
 */
List<int> _generateArray(final int L, final int odd) {
  final List<int> arr = [];

  final math.Random random = math.Random();
  for (int i = 0; i < (L - 1) ~/ 2; ++i) {
    final int val = random.nextInt(MAX_N);
    arr.addAll([val, val]);
  }
  arr.add(odd);
  arr.shuffle(random);
  return arr;
}
