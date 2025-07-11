class Solution {
  bool isValidSudoku(List<List<String>> board) {
    Map<int, List<int>> rows = {};
    Map<int, List<int>> columns = {};
    List<List<List<int>>> grids = [
      [[], [], []],
      [[], [], []],
      [[], [], []],
    ];

    for (var i = 0; i < board.length; i++) {
      for (var j = 0; j < board[i].length; j++) {
        if (board[i][j] != '.') {
          final digit = int.parse(board[i][j]);

          if (rows[i]?.contains(digit) == true) return false;
          if (rows[i] == null) {
            rows[i] = [digit];
          } else {
            rows[i]!.add(digit);
          }

          if (columns[j]?.contains(digit) == true) return false;
          if (columns[j] == null) {
            columns[j] = [digit];
          } else {
            columns[j]!.add(digit);
          }

          if (grids[(i / 3).floor()][(j / 3).floor()].contains(digit) == true)
            return false;
          grids[(i / 3).floor()][(j / 3).floor()].add(digit);
        }
      }
    }

    return true;
  }
}

void main() {
  // Example 1
  List<List<String>> board1 = [
    ['5', '3', '.', '.', '7', '.', '.', '.', '.'],
    ['6', '.', '.', '1', '9', '5', '.', '.', '.'],
    ['.', '9', '8', '.', '.', '.', '.', '6', '.'],
    ['8', '.', '.', '.', '6', '.', '.', '.', '3'],
    ['4', '.', '9', '8', '.', '3', '.', '.', '1'],
    ['7', '.', '.', '.', '2', '.', '.', '.', '6'],
    ['.', '6', '.', '.', '.', '.', '2', '8', '.'],
    ['.', '.', '.', '4', '1', '9', '.', '.', '5'],
    ['.', '.', '.', '.', '8', '.', '.', '7', '9'],
  ];
  print(Solution().isValidSudoku(board1)); // Output: true

  // Example 2
  List<List<String>> board2 = [
    ['8', '3', '.', '.', '7', '.', '.', '.', '.'],
    ['6', '.', '.', '1', '9', '5', '.', '.', '.'],
    ['.', '9', '8', '.', '.', '.', '.', '6', '.'],
    ['8', '.', '.', ".", "6", ".", ".", ".", "3"],
    ["4", ".", "9", "8", ".", "3", ".", ".", "1"],
    ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
    [".", "6", ".", ".", ".", ".", "2", "8", "."],
    [".", ".", ".", "4", "1", "9", ".", ".", "5"],
    [".", ".", ".", ".", "8", ".", ".", "7", "9"],
  ];
  print(Solution().isValidSudoku(board2)); // Output: false
}
