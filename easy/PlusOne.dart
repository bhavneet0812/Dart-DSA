class Solution {
  List<int> plusOne(List<int> digits) {
    int lastIndex = digits.length - 1;
    if (digits[lastIndex] < 9) {
      digits[lastIndex] += 1;
      return digits;
    }

    while (digits[lastIndex] == 9) {
      digits[lastIndex] = 0;
      if (lastIndex == 0) {
        digits.insert(0, 1);
        return digits;
      }
      lastIndex--;
    }
    digits[lastIndex] += 1;
    return digits;
  }
}

void main() {
  final solution = Solution();

  // Example 1
  List<int> digits1 = [1, 2, 3];
  print(solution.plusOne(digits1)); // Output: [1, 2, 4]

  // Example 2
  List<int> digits2 = [4, 3, 2, 1];
  print(solution.plusOne(digits2)); // Output: [4, 3, 2, 2]

  // Example 3
  List<int> digits3 = [9];
  print(solution.plusOne(digits3)); // Output: [1, 0]
}
