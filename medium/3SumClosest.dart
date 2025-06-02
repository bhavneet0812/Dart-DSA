class Solution {
  int threeSumClosest(List<int> nums, int target) {
    nums.sort();
    int closest = nums[0] + nums[1] + nums[2];
    int diff = (closest - target).abs();

    for (var i = 0; i < nums.length; i++) {
      int l = i + 1;
      int r = nums.length - 1;
      while (l < r) {
        final sum = nums[i] + nums[l] + nums[r];
        final d = (target - sum).abs();

        if (d < diff) {
          diff = d;
          closest = sum;
        }

        (sum < target) ? l++ : r--;
      }
    }

    return closest;
  }
}

void main() {
  final solution = Solution();

  // Example 1
  List<int> nums1 = [-1, 2, 1, -4];
  int target1 = 1;
  print(solution.threeSumClosest(nums1, target1)); // Output: 2

  // Example 2
  List<int> nums2 = [0, 0, 0];
  int target2 = 1;
  print(solution.threeSumClosest(nums2, target2)); // Output: 0

  // Example 3
  List<int> nums3 = [1, 1, -1, -1];
  int target3 = -2;
  print(solution.threeSumClosest(nums3, target3)); // Output: -2
}
