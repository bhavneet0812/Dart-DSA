import 'dart:math';

class Solution {
  int findMin(List<int> nums) {
    if (nums.length == 1) return nums.first;
    if (nums.first < nums.last) return nums.first;
    return findSmallest(0, nums.length - 1, nums);
  }

  int findSmallest(int start, int end, List<int> nums) {
    if (start == end) return nums[start];
    if (end - start == 1) return min(nums[start], nums[end]);
    int mid = (start + end) ~/ 2;
    if (nums[mid] > nums[end]) {
      return findSmallest(mid + 1, end, nums);
    } else {
      return findSmallest(start, mid, nums);
    }
  }
}

void main() {
  final solution = Solution();
  // Example 1
  List<int> nums1 = [3, 4, 5, 1, 2];
  print(solution.findMin(nums1)); // Output: 1
  // Example 2
  List<int> nums2 = [4, 5, 6, 7, 0, 1, 2];
  print(solution.findMin(nums2)); // Output: 0
  // Example 3
  List<int> nums3 = [11, 13, 15, 17];
  print(solution.findMin(nums3)); // Output: 11
  // Example 4
  List<int> nums4 = [1, 2, 3, 4, 5, 6, 7];
  print(solution.findMin(nums4)); // Output: 1
  // Example 5
  List<int> nums5 = [2, 2, 2, 0, 1, 2];
  print(solution.findMin(nums5)); // Output: 0
  // Example 6
  List<int> nums6 = [1, 1, 1, 1, 1, 1, 1];
  print(solution.findMin(nums6)); // Output: 1
  // Example 7
  List<int> nums7 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(solution.findMin(nums7)); // Output: 1
  // Example 8
  List<int> nums8 = [10, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  print(solution.findMin(nums8)); // Output: 1
  // Example 9
  List<int> nums9 = [5, 6, 7, 8, 9, 10, 1, 2, 3, 4];
  print(solution.findMin(nums9)); // Output: 1
  // Example 10
  List<int> nums10 = [2, 3, 4, 5, 6, 7, 8, 9, 10, 1];
  print(solution.findMin(nums10)); // Output: 1
  // Example 11
  List<int> nums11 = [3, 4, 5, 6, 7, 8, 9, 10, 1, 2];
  print(solution.findMin(nums11)); // Output: 1
  // Example 12
  List<int> nums12 = [4, 5, 6, 7, 8, 9, 10, 1, 2, 3];
  print(solution.findMin(nums12)); // Output: 1
  // Example 13
  List<int> nums13 = [5, 6, 7, 8, 9, 10, 1, 2, 3, 4];
  print(solution.findMin(nums13)); // Output: 1
}
