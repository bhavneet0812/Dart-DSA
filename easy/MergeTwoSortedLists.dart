//  Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode primaryNode = ListNode(0);
    ListNode currentNode = primaryNode;

    while (list1 != null && list2 != null) {
      if (list1.val < list2.val) {
        currentNode.next = list1;
        list1 = list1.next;
      } else {
        currentNode.next = list2;
        list2 = list2.next;
      }
      currentNode = currentNode.next!;
    }
    if (list1 != null) currentNode.next = list1;
    if (list2 != null) currentNode.next = list2;

    return primaryNode.next;
  }
}

void main() {
  final solution = Solution();

  // Example 1
  ListNode list1 = ListNode(1, ListNode(2, ListNode(4)));
  ListNode list2 = ListNode(1, ListNode(3, ListNode(4)));
  ListNode? mergedList = solution.mergeTwoLists(list1, list2);
  printList(mergedList); // Output: 1 -> 1 -> 2 -> 3 -> 4 -> 4

  // Example 2
  mergedList = solution.mergeTwoLists(null, null);
  printList(mergedList); // Output: null

  // Example 3
  mergedList = solution.mergeTwoLists(ListNode(0), null);
  printList(mergedList); // Output: 0
}

void printList(ListNode? node) {
  if (node == null) {
    print('null');
    return;
  }
  List<String> values = [];
  while (node != null) {
    values.add(node.val.toString());
    node = node.next;
  }
  print(values.join(' -> '));
}
