class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (var fi = 0; fi < nums.length; fi++) {
      final requiredValue = target - nums[fi];

      int left = fi + 1;
      int right = nums.length - 1;
      while (left <= right) {
        int mid = (left + right) ~/ 2;
        if (nums[left] == requiredValue) return [fi + 1, left + 1];
        if (nums[mid] == requiredValue) return [fi + 1, mid + 1];
        if (nums[right] == requiredValue) return [fi + 1, right + 1];

        if (requiredValue > nums[mid]) {
          left = mid + 1;
        } else {
          right = mid - 1;
        }
      }
    }

    return [];
  }
}

void main() {
  final solution = Solution();

  // Example 1
  List<int> nums1 = [2, 7, 11, 15];
  int target1 = 9;
  print(solution.twoSum(nums1, target1)); // Output: [1, 2]

  // Example 2
  List<int> nums2 = [2, 3, 4];
  int target2 = 6;
  print(solution.twoSum(nums2, target2)); // Output: [1, 3]

  // Example 3
  List<int> nums3 = [-1, 0];
  int target3 = -1;
  print(solution.twoSum(nums3, target3)); // Output: [1, 2]
}
