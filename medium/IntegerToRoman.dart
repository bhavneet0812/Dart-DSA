void main() {
  final solution = Solution();
  print(solution.intToRoman(3)); // Output: III
  print(solution.intToRoman(58)); // Output: LVIII
  print(solution.intToRoman(1994)); // Output: MCMXCIV
}

class Solution {
  final values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
  final symbols = [
    "M",
    "CM",
    "D",
    "CD",
    "C",
    "XC",
    "L",
    "XL",
    "X",
    "IX",
    "V",
    "IV",
    "I",
  ];

  String intToRoman(int num) {
    String result = '';

    for (int i = 0; i < values.length; i++) {
      while (num >= values[i]) {
        num -= values[i];
        result += symbols[i];
      }
    }

    return result;
  }
}
