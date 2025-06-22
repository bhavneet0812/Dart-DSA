import 'dart:core';
import 'dart:math';

class Solution {
  int trap(List<int> h) {
    int l = 0;
    int r = h.length - 1;
    int lmax = double.minPositive.toInt();
    int rmax = double.minPositive.toInt();
    int ans = 0;

    while (l < r) {
      lmax = max(lmax, h[l]);
      rmax = max(rmax, h[r]);
      ans += (lmax < rmax) ? lmax - h[l++] : rmax - h[r--];
    }
    return ans;
  }
}

void main() {
  final solution = Solution();

  // Example 1
  List<int> heights1 = [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1];
  print(solution.trap(heights1)); // Output: 6

  // Example 2
  List<int> heights2 = [4, 2, 0, 3, 2, 5];
  print(solution.trap(heights2)); // Output: 9
}
