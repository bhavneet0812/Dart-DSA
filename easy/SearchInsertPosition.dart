class Solution {
  int searchInsert(List<int> nums, int target) {
    int l = 0, r = nums.length - 1;
    if (target < nums[l]) return 0;
    if (target > nums[r]) return nums.length;

    while (l < r) {
      final d = (r - l);
      final m = l + (d ~/ 2);
      if (target == nums[m]) {
        return m;
      } else if (target > nums[m]) {
        if (l == m) {
          return target < nums[l] ? l - 1 : l + 1;
        } else {
          l = m;
        }
      } else if (target < nums[m]) {
        if (r == m) {
          return target > nums[r] ? r + 1 : r - 1;
        } else {
          r = m;
        }
      }
    }
    return l;
  }
}

void main() {
  final solution = Solution();

  // Example 1
  List<int> nums1 = [1, 3, 5, 6];
  int target1 = 5;
  print(solution.searchInsert(nums1, target1)); // Output: 2

  // Example 2
  List<int> nums2 = [1, 3, 5, 6];
  int target2 = 2;
  print(solution.searchInsert(nums2, target2)); // Output: 1

  // Example 3
  List<int> nums3 = [1, 3, 5, 6];
  int target3 = 7;
  print(solution.searchInsert(nums3, target3)); // Output: 4

  // Example 4
  List<int> nums4 = [1, 3, 5, 6];
  int target4 = 0;
  print(solution.searchInsert(nums4, target4)); // Output: 0
}
