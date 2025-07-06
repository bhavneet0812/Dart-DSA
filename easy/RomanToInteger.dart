class Solution {
  int romanToInt(String s) {
    int result = 0;
    int i = 0;

    while (i < s.length) {
      if (i + 1 < s.length && _isSubtractive(s[i], s[i + 1])) {
        result += _getValue(s[i + 1]) - _getValue(s[i]);
        i += 2;
      } else {
        result += _getValue(s[i]);
        i++;
      }
    }

    return result;
  }

  bool _isSubtractive(String current, String next) {
    return _getValue(current) < _getValue(next);
  }

  int _getValue(String symbol) {
    switch (symbol) {
      case 'I':
        return 1;
      case 'V':
        return 5;
      case 'X':
        return 10;
      case 'L':
        return 50;
      case 'C':
        return 100;
      case 'D':
        return 500;
      case 'M':
        return 1000;
      default:
        throw ArgumentError('Invalid Roman numeral symbol');
    }
  }
}

void main() {
  final solution = Solution();

  // Example 1
  String s1 = "III";
  int result1 = solution.romanToInt(s1);
  print(result1); // Output: 3

  // Example 2
  String s2 = "IV";
  int result2 = solution.romanToInt(s2);
  print(result2); // Output: 4

  // Example 3
  String s3 = "IX";
  int result3 = solution.romanToInt(s3);
  print(result3); // Output: 9

  // Example 4
  String s4 = "LVIII";
  int result4 = solution.romanToInt(s4);
  print(result4); // Output: 58

  // Example 5
  String s5 = "MCMXCIV";
  int result5 = solution.romanToInt(s5);
  print(result5); // Output: 1994
}
