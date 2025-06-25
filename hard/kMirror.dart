class Solution {
  int kMirror(int k, int n) {
    int total = 0;
    int count = 0;
    int currentNumber = 0;

    while (count < n) {
      currentNumber = _nextBasePalindrome(currentNumber); // base-10 palindrome
      if (_isBasePalindrome(currentNumber, k)) {
        total += currentNumber;
        count++;
      }
    }

    return total;
  }

  int _nextBasePalindrome(int number) {
    // If number is 0, next palindrome is 1
    if (number == 0) return 1;

    String s = (number + 1).toString();
    int len = s.length;
    int halfLen = (len + 1) ~/ 2;

    // Generate the first half and mirror it
    String firstHalf = s.substring(0, halfLen);
    String mirrored =
        firstHalf + firstHalf.substring(0, len ~/ 2).split('').reversed.join();

    int palindrome = int.parse(mirrored);
    if (palindrome > number) return palindrome;

    // Increment the first half and mirror again
    int incremented = int.parse(firstHalf) + 1;
    String newFirstHalf = incremented.toString().padLeft(halfLen, '0');
    String newMirrored =
        newFirstHalf +
        newFirstHalf.substring(0, len ~/ 2).split('').reversed.join();

    return int.parse(newMirrored);
  }

  List<int> _convertToDigits(int number, int base) {
    List<int> digits = [];
    while (number > 0) {
      digits.add(number % base);
      number ~/= base;
    }
    return digits;
  }

  bool _isBasePalindrome(int number, int base) {
    List<int> digits = _convertToDigits(number, base);

    int left = 0, right = digits.length - 1;
    while (left < right) {
      if (digits[left++] != digits[right--]) return false;
    }

    return true;
  }
}

void main() {
  final solution = Solution();

  // Example 1
  int k1 = 2, n1 = 5;
  print(solution.kMirror(k1, n1)); // Output: 25

  // Example 2
  int k2 = 3, n2 = 7;
  print(solution.kMirror(k2, n2)); // Output: 499

  // Example 3
  int k3 = 7, n3 = 17;
  print(solution.kMirror(k3, n3)); // Output: 20379000

  // Example 4
  int k4 = 2, n4 = 20;
  print(solution.kMirror(k4, n4)); // Output: 2630758

  // Example 5
  int k5 = 7, n5 = 15;
  print(solution.kMirror(k5, n5)); // Output: 6822448
}
