class Solution {
  List<List<String>> solve(int n) {
    List<List<String>> moves = [];
    _moveDisks(n, 'A', 'B', 'C', moves);
    return moves;
  }

  void _moveDisks(
    int n,
    String source,
    String target,
    String auxiliary,
    List<List<String>> moves,
  ) {
    if (n == 1) {
      moves.add([n.toString(), source, target]);
      return;
    }
    _moveDisks(n - 1, source, auxiliary, target, moves);
    moves.add([n.toString(), source, target]);
    _moveDisks(n - 1, auxiliary, target, source, moves);
  }
}

void main() {
  final solution = Solution();

  // // Example 1
  // int n1 = 2;
  // print(
  //   solution.solve(n1),
  // ); // Output: [[1, 'A', 'C'], [2, 'A', 'B'], [1, 'C', 'B']]

  // // Example 2
  // int n2 = 3;
  // print(
  //   solution.solve(n2),
  // ); // Output: [[1, 'A', 'B'], [2, 'A', 'C'], [1, 'B', 'C'], [3, 'A', 'B'], [1, 'C', 'A'], [2, 'C', 'B'], [1, 'A', 'B']]

  // Example 3
  int n3 = 10;
  print(
    solution.solve(n3).length,
  ); // Output: [[1, 'A', 'C'], [2, 'A', 'B'], [1, 'C', 'B'], [3, 'A', 'C'], [1, 'B', 'A'], [2, 'B', 'C'], [1, 'A', 'C'], [4, 'A', 'B'], [1, 'C', 'B'], [2, 'C', 'A'], [1, 'B', 'A'], [3, 'C', 'B'], [1, 'A', 'C'], [2, 'A', 'B'], [1, 'C', 'B']];
}
