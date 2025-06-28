class Solution {
  List<int> selectionSort(List<int> nums) {
    int n = nums.length;
    for (int i = 0; i < n - 1; i++) {
      int minIndex = i;
      for (int j = i + 1; j < n; j++) {
        if (nums[j] < nums[minIndex]) {
          minIndex = j;
        }
      }
      // Swap the found minimum element with the first element
      if (minIndex != i) {
        int temp = nums[i];
        nums[i] = nums[minIndex];
        nums[minIndex] = temp;
      }
    }
    return nums;
  }
}

void main() {
  final solution = Solution();

  // Example 1
  List<int> nums1 = [64, 25, 12, 22, 11];
  print(solution.selectionSort(nums1)); // Output: [11, 12, 22, 25, 64]

  // Example 2
  List<int> nums2 = [5, 3, 8, 6, 2];
  print(solution.selectionSort(nums2)); // Output: [2, 3, 5, 6, 8]

  // Example 3
  List<int> nums3 = [1];
  print(solution.selectionSort(nums3)); // Output: [1]

  // Example 4
  List<int> nums4 = [];
  print(solution.selectionSort(nums4)); // Output: []
}
