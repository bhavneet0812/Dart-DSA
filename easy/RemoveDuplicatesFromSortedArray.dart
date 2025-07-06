class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.length == 1) return 1;

    int lastUniqueIndex = 1;
    for (var i = 1; i < nums.length; i++) {
      if (nums[lastUniqueIndex - 1] != nums[i]) {
        final temp = nums[lastUniqueIndex];
        nums[lastUniqueIndex] = nums[i];
        nums[i] = temp;
        lastUniqueIndex += 1;
      }
    }
    return lastUniqueIndex;
  }
}

void main() {
  final solution = Solution();

  // Example 1
  List<int> nums1 = [1, 1, 2];
  int k1 = solution.removeDuplicates(nums1);
  print('k: $k1, nums: ${nums1.sublist(0, k1)}'); // Output: k: 2, nums: [1, 2]

  // Example 2
  List<int> nums2 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
  int k2 = solution.removeDuplicates(nums2);
  print(
    'k: $k2, nums: ${nums2.sublist(0, k2)}',
  ); // Output: k: 5, nums: [0, 1, 2, 3, 4]
}
