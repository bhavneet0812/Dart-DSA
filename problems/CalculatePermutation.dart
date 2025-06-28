class Solution {
  /// Calculates all permutations of a string of length `r`.
  List<String> calcStringPermutation(String str, int r) {
    if (r > str.length) {
      return []; // Permutation is not defined for r > length of string
    }
    List<String> result = [];
    _permute(str.split(''), 0, r, result);
    return result;
  }

  /// Helper function to generate permutations recursively.
  void _permute(List<String> arr, int start, int r, List<String> result) {
    print('Permuting: $arr, start: $start, r: $r, result: $result');
    if (start == r) {
      result.add(arr.sublist(0, r).join(''));
      return;
    }
    for (int i = start; i < arr.length; i++) {
      if (i != start) _swap(arr, start, i);
      _permute(arr, start + 1, r, result);
      if (i != start) _swap(arr, start, i); // backtrack
    }
  }

  /// Helper function to swap two elements in a list.
  void _swap(List<String> arr, int i, int j) {
    String temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }

  int calculatePermutation(int n, int r) {
    if (r > n) {
      return 0; // Permutation is not defined for r > n
    }
    int numerator = factorial(n);
    int denominator = factorial(n - r);
    return numerator ~/ denominator; // Use integer division
  }

  int factorial(int num) {
    if (num == 0 || num == 1) {
      return 1;
    }
    int result = 1;
    for (int i = 2; i <= num; i++) {
      result *= i;
    }
    return result;
  }
}

void main() {
  final solution = Solution();

  // // Example 1
  // int n1 = 5;
  // int r1 = 2;
  // print(solution.calculatePermutation(n1, r1)); // Output: 20

  // // Example 2
  // int n2 = 10;
  // int r2 = 3;
  // print(solution.calculatePermutation(n2, r2)); // Output: 720

  // // Example 3
  // int n3 = 7;
  // int r3 = 0;
  // print(
  //   solution.calculatePermutation(n3, r3),
  // ); // Output: 1 (P(7,0) is defined as 1)

  // // Example where r > n
  // int n4 = 4;
  // int r4 = 5;
  // print(
  //   solution.calculatePermutation(n4, r4),
  // ); // Output: 0 (P(4,5) is not defined)

  // Example with string permutations
  String str = "abc";
  int r5 = 3;
  List<String> permutations = solution.calcStringPermutation(str, r5);
  print(permutations); // Output: [ab, ac, ba, bc, ca, cb]
}
