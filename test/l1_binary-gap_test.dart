import 'package:test/test.dart';

/// Import the lessor to be tested.
import '../src/l1_binary-gap.dart';

void main() {
  const int kMaxInt = 2147483647; // The largest input we need worry about.

  group('Examples', () {
    test("Example 1 test", () => expect(solution(9), 2));
    test("Example 2 test", () => expect(solution(529), 4));
    test("Example 3 test", () => expect(solution(20), 1));
    test("Example 4 test", () => expect(solution(15), 0));
    test("Example 5 test", () => expect(solution(32), 0));
  });

  group('Trailing zero', () {
    test("Trailing zero test 1", () => expect(0, solution(1)));
    test("Trailing zero test 2", () => expect(1, solution(5)));
    test("Trailing zero test 3", () => expect(0, solution(kMaxInt)));
  });

  group('Simple 1', () {
    test("Simple 1 test 1", () => expect(solution(6), 0));
    test("Simple 1 test 2", () => expect(solution(328), 2));
  });

  group('Simple 2', () {
    test("Simple 2 test 1", () => expect(solution(9), 2));
    test("Simple 2 test 2", () => expect(solution(11), 1));
    test("Simple 2 test 3", () => expect(solution(32), 0));
  });

  group('Medium', () {
    test("Medium test 1", () => expect(solution(1162), 3));
    test("Medium test 2", () => expect(solution(51712), 2));
    test("Medium test 3", () => expect(solution(561892), 3));
  });

  group('Large', () {
    test("Large test 1", () => expect(solution(6291457), 20));
    test("Large test 2", () => expect(solution(805306369), 27));
    test("Large test 3", () => expect(solution(1610612737), 28));
  });
}
