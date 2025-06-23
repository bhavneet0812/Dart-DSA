class Solution {
  List<List<int>> generate(int numRows) {
    List<List<int>> result = [
      [1],
    ];
    for (var i = 1; i < numRows; i++) {
      final prevRow = result[i - 1];
      final currRow = List.filled(i + 1, 1);
      for (var j = 1; j < i; j++) {
        currRow[j] = prevRow[j - 1] + prevRow[j];
      }
      result.add(currRow);
    }
    return result;
  }
}

void main() {
  final solution = Solution();

  // Example 1
  int numRows1 = 5;
  print(solution.generate(numRows1));
  // Output: [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]]

  // Example 2
  int numRows2 = 0;
  print(solution.generate(numRows2));
  // Output: []

  // Example 3
  int numRows3 = 1;
  print(solution.generate(numRows3));
  // Output: [[1]]
}
