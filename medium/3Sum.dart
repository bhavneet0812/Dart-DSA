class Solution {
  List<List<int>> threeSum(List<int> nums) {
    nums.sort();
    final result = <List<int>>[];

    for (int i = 0; i < nums.length - 2; i++) {
      if (nums[i] > 0) break;
      if (i > 0 && nums[i] == nums[i - 1]) continue; // skip duplicate i

      int left = i + 1;
      int right = nums.length - 1;

      while (left < right) {
        int sum = nums[i] + nums[left] + nums[right];
        if (sum == 0) {
          result.add([nums[i], nums[left], nums[right]]);
          left++;
          right--;

          // Skip duplicates for left and right
          while (left < right && nums[left] == nums[left - 1]) left++;
          while (left < right && nums[right] == nums[right + 1]) right--;
        } else if (sum < 0) {
          left++;
        } else {
          right--;
        }
      }
    }

    return result;
  }
}

void main() {
  final solution = Solution();
  print(
    solution.threeSum([-1, 0, 1, 2, -1, -4]),
  ); // Output: [[-1,-1,2],[-1,0,1]]
  print(solution.threeSum([])); // Output: []
  print(solution.threeSum([0])); // Output: []
}
