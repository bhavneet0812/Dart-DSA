void main() {
  final solution = Solution();
}

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
