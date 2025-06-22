List<String> letterCombinations(String digits) {
  if (digits.isEmpty) return [];

  // Mapping for digits to letters
  final Map<String, String> phoneMap = {
    '2': 'abc',
    '3': 'def',
    '4': 'ghi',
    '5': 'jkl',
    '6': 'mno',
    '7': 'pqrs',
    '8': 'tuv',
    '9': 'wxyz',
  };

  List<String> result = [];

  void backtrack(int index, String path) {
    if (index == digits.length) {
      result.add(path);
      return;
    }

    String letters = phoneMap[digits[index]]!;
    for (int i = 0; i < letters.length; i++) {
      print(letters[i]); // Access the letter at index i
      backtrack(index + 1, path + letters[i]);
    }
  }

  backtrack(0, '');
  return result;
}

void main() {
  // Example 1
  String digits1 = "23";
  final digits1Combinations = letterCombinations(digits1);
  // print(digits1Combinations);
  // Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

  // Example 2
  // String digits2 = "";
  // final digits2Combinations = letterCombinations(digits2);
  // print(digits2Combinations);
  // Output: []

  // Example 3
  // String digits3 = "2";
  // final digits3Combinations = letterCombinations(digits3);
  // print(digits3Combinations);
  // Output: ["a","b","c"]
}
