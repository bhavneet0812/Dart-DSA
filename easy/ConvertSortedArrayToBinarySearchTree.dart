class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  TreeNode? sortedArrayToBST(List<int> nums) {
    final rootNode = convertToBST(nums);
    return rootNode;
  }

  TreeNode? convertToBST(List<int> nums) {
    if (nums.isEmpty) return null;
    final m = nums.length ~/ 2;
    final rootNode = TreeNode(nums[m]);
    rootNode.left = convertToBST(nums.sublist(0, m));
    rootNode.right = convertToBST(nums.sublist(m + 1, nums.length));
    return rootNode;
  }
}

void main() {
  final solution = Solution();

  // Example 1
  List<int> nums1 = [-10, -3, 0, 5, 9];
  TreeNode? bst1 = solution.sortedArrayToBST(nums1);
  print(bst1?.val); // Output: 0

  // Example 2
  List<int> nums2 = [1, 3];
  TreeNode? bst2 = solution.sortedArrayToBST(nums2);
  print(bst2?.val); // Output: 3
}
