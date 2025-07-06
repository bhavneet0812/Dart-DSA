class Solution {
  List<int> twoSum(List<int> nums, int target) {
    var memo = Map<int, int>();
    for (var i = 0; i < nums.length; i++) {
      final value = nums[i];
      final requiredValue = target - value;
      if (memo[requiredValue] != null) {
        return [memo[requiredValue]!, i];
      } else {
        memo[value] = i;
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
  print(solution.twoSum(nums1, target1)); // Output: [0, 1]

  // Example 2
  List<int> nums2 = [3, 2, 4];
  int target2 = 6;
  print(solution.twoSum(nums2, target2)); // Output: [1, 2]

  // Example 3
  List<int> nums3 = [3, 3];
  int target3 = 6;
  print(solution.twoSum(nums3, target3)); // Output: [0, 1]
}
