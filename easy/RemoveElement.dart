class Solution {
  int removeElement(List<int> nums, int val) {
    int k = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != val) {
        nums[k] = nums[i];
        k++;
      }
    }

    return k;
  }
}

void main() {
  final solution = Solution();

  // Example 1
  List<int> nums1 = [3, 2, 2, 3];
  int val1 = 3;
  int k1 = solution.removeElement(nums1, val1);
  print('k: $k1, nums: ${nums1.sublist(0, k1)}'); // Output: k: 2, nums: [2, 2]

  // Example 2
  List<int> nums2 = [0, 1, 2, 2, 3, 0, 4, 2];
  int val2 = 2;
  int k2 = solution.removeElement(nums2, val2);
  print(
    'k: $k2, nums: ${nums2.sublist(0, k2)}',
  ); // Output: k: 5, nums: [0, 1, 3, 0, 4]
}
