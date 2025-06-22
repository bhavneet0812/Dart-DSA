class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
    if (head == null) return null;

    ListNode dummy = ListNode(0, head);
    ListNode? fast = dummy;
    ListNode? slow = dummy;

    for (int i = 0; i <= n; i++) {
      fast = fast?.next;
    }

    while (fast != null) {
      fast = fast.next;
      slow = slow?.next;
    }

    slow?.next = slow.next?.next;

    return dummy.next;
  }
}

void main() {
  final solution = Solution();

  // Example 1: Remove the 2nd node from the end
  ListNode head1 = ListNode(
    1,
    ListNode(2, ListNode(3, ListNode(4, ListNode(5)))),
  );
  int n1 = 2;
  ListNode? result1 = solution.removeNthFromEnd(head1, n1);
  printList(result1); // Output: 1 -> 2 -> 3 -> 5

  // Example 2: Remove the 1st node from the end
  ListNode head2 = ListNode(1);
  int n2 = 1;
  ListNode? result2 = solution.removeNthFromEnd(head2, n2);
  printList(result2); // Output: null (empty list)
}

void printList(ListNode? head) {
  ListNode? current = head;
  while (current != null) {
    print(current.val);
    current = current.next;
  }
}
