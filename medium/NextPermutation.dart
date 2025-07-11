class Solution {
  void nextPermutation(List<int> nums) {
    int n = nums.length;
    int i = n - 2;

    // Step 1: Find the first decreasing element from the end
    while (i >= 0 && nums[i] >= nums[i + 1]) {
      i--;
    }

    if (i >= 0) {
      // Step 2: Find the element just larger than nums[i]
      int j = n - 1;
      while (nums[j] <= nums[i]) {
        j--;
      }
      // Step 3: Swap elements at i and j
      _swap(nums, i, j);
    }

    // Step 4: Reverse the sub array from i + 1 to the end
    _reverse(nums, i + 1, n - 1);
  }

  void _swap(List<int> nums, int i, int j) {
    int temp = nums[i];
    nums[i] = nums[j];
    nums[j] = temp;
  }

  void _reverse(List<int> nums, int start, int end) {
    while (start < end) {
      _swap(nums, start++, end--);
    }
  }
}

void main() {
  // Example 1
  List<int> nums1 = [1, 2, 3];
  Solution().nextPermutation(nums1);
  print(nums1); // Output: [1, 3, 2]

  // Example 2
  List<int> nums2 = [3, 2, 1];
  Solution().nextPermutation(nums2);
  print(nums2); // Output: [1, 2, 3]

  // Example 3
  List<int> nums3 = [1, 1, 5];
  Solution().nextPermutation(nums3);
  print(nums3); // Output: [1, 5, 1]

  // Example 4
  List<int> nums4 = [1];
  Solution().nextPermutation(nums4);
  print(nums4); // Output: [1]

  // Example 5
  List<int> nums5 = [1, 3, 2];
  Solution().nextPermutation(nums5);
  print(nums5); // Output: [2, 1, 3]

  // Example 6
  List<int> nums6 = [5, 4, 7, 5, 3, 2];
  Solution().nextPermutation(nums6);
  print(nums6); // Output: [5, 5, 2, 3, 4, 7]
}
