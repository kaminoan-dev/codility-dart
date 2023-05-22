import 'package:test/test.dart';
import 'dart:math' as math;

/// Import the lessor to be tested.
import '../src/l2_cyclic-rotation.dart';

void main() {
  group('Examples', () {
    test("Example 1 test 1",
        () => expect(solution([3, 8, 9, 7, 6], 3), [9, 7, 6, 3, 8]));
    test("Example 1 test 2", () => expect(solution([0, 0, 0], 1), [0, 0, 0]));
    test("Example 1 test 3",
        () => expect(solution([1, 2, 3, 4], 4), [1, 2, 3, 4]));
  });

  group('Zero', () {
    test("Zero test 1",
        () => expect(solution([6, 3, 8, 9, 7], 0), [6, 3, 8, 9, 7]));
  });

  group('One', () {
    test("One test 1",
        () => expect(solution([6, 3, 8, 9, 7], 1), [7, 6, 3, 8, 9]));
  });

  group('Full', () {
    test("Full test 1",
        () => expect(solution([6, 3, 8, 9, 7], 5), [6, 3, 8, 9, 7]));
  });

  group('Empty', () {
    test("Empty test 1", () => expect(solution([], 5), []));
  });
}
