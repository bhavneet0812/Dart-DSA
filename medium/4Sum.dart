void main() {
  List<int> nums = [1, 0, -1, 0, -2, 2];
  int target = 0;
  Solution solution = Solution();
  List<List<int>> result = solution.fourSum(nums, target);
  print(result); // Expected output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]
}

class Solution {
  List<List<int>> fourSum(List<int> nums, int target) {
    nums.sort(); // Sorting is necessary
    return kSum(nums: nums, start: 0, k: 4, target: target);
  }

  List<List<int>> kSum({
    required List<int> nums,
    required int start,
    required int k,
    required int target,
  }) {
    List<List<int>> result = [];

    // Base case: use twoSum when k == 2
    if (k == 2) {
      return twoSum(nums, start, target);
    }

    for (int i = start; i < nums.length - (k - 1); i++) {
      // Skip duplicates
      if (i > start && nums[i] == nums[i - 1]) continue;

      // Recursive call to kSum for k-1
      List<List<int>> subResults = kSum(
        nums: nums,
        start: i + 1,
        k: k - 1,
        target: target - nums[i],
      );

      for (List<int> subset in subResults) {
        result.add([nums[i], ...subset]);
      }
    }

    return result;
  }

  List<List<int>> twoSum(List<int> nums, int start, int target) {
    List<List<int>> pairs = [];
    int left = start;
    int right = nums.length - 1;

    while (left < right) {
      int sum = nums[left] + nums[right];
      if (sum == target) {
        pairs.add([nums[left], nums[right]]);
        while (left < right && nums[left] == nums[left + 1]) left++;
        while (left < right && nums[right] == nums[right - 1]) right--;
        left++;
        right--;
      } else if (sum < target) {
        left++;
      } else {
        right--;
      }
    }

    return pairs;
  }
}
