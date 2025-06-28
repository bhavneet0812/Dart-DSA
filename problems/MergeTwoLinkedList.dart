class LinkedNode {
  int val;
  LinkedNode? next;

  LinkedNode(this.val, [this.next]);
}

class Solution {
  LinkedNode? mergeTwoLists(LinkedNode? l1, LinkedNode? l2) {
    if (l1 == null) return l2;
    if (l2 == null) return l1;

    LinkedNode dummy = LinkedNode(0);
    LinkedNode current = dummy;
    _merge(current, l1, l2);
    return dummy.next;
  }

  void _merge(LinkedNode current, LinkedNode? l1, LinkedNode? l2) {
    if (l1 == null && l2 == null) {
      return;
    }
    if (l1 == null) {
      current.next = LinkedNode(l2!.val, l2.next);
      return;
    }
    if (l2 == null) {
      current.next = LinkedNode(l1.val, l1.next);
      return;
    }

    current.next = LinkedNode(l1.val, l1.next);
    current = current.next!;
    current.next = LinkedNode(l2.val, l2.next);

    return _merge(current.next!, l1.next, l2.next);
  }
}

void main() {
  final solution = Solution();

  // Example 1
  LinkedNode l1 = LinkedNode(1, LinkedNode(2, LinkedNode(4)));
  LinkedNode l2 = LinkedNode(1, LinkedNode(3, LinkedNode(4)));
  LinkedNode? mergedList = solution.mergeTwoLists(l1, l2);

  // Print merged list
  while (mergedList != null) {
    print(mergedList.val);
    mergedList = mergedList.next;
  }

  // Example 2
  LinkedNode? l3 = null;
  LinkedNode? l4 = null;
  mergedList = solution.mergeTwoLists(l3, l4);
  print(mergedList); // Output: null
}
