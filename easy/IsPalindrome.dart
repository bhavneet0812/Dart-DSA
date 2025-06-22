void main() {
  final solution = Solution();
  final s = "race a car";
  final result = solution.isPalindrome(s);
  print(result);
}

class Solution {
  bool isPalindrome(String s) {
    final cleanStr = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

    int left = 0;
    int right = cleanStr.length - 1;

    while (left < right) {
      final l = cleanStr[left];
      final r = cleanStr[right];

      if (l != r) return false;

      left++;
      right--;
    }

    return true;
  }
}
