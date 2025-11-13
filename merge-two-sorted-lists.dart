void main() {
  final Solution solution = Solution();

  var res = solution.mergeTwoLists(ListNode(-10, ListNode(-10, ListNode(-9, ListNode(-4, ListNode(1, ListNode(6, ListNode(6))))))), ListNode(-7));

  List foo = [];

  while (res != null) {
    foo.add(res.val);
    res = res.next;
  }

  print(foo);
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    // If either list1 or list2 is null, return the not-null list;
    if (list1 == null || list2 == null) return list1 ?? list2;

    List nums = [...getNumFromListNode(list1), ...getNumFromListNode(list2)];

    nums.sort();
    nums = nums.reversed.toList();

    ListNode listNode = ListNode(nums.first);

    for (var num in nums.skip(1).toList()) {
      listNode = ListNode(num, listNode);
    }

    return listNode;
  }

  List<int> getNumFromListNode(ListNode? list) {
    List arr = [];

    if (list == null) return [];

    if (list.next != null) {
      return [list.val, ...getNumFromListNode(list.next)];
    } else {
      return [list.val];
    }
  }
}
