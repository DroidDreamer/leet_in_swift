

// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil, l2 == nil {
            return nil
        }
        if let node1 = l1, let node2 = l2 {
            //TODO: 合并
            
            
            if node1.val < node2.val {
                node1.next = mergeTwoLists(node1.next, node2)
                return node1
            }else {
                node2.next = mergeTwoLists(node1, node2.next)
                return node2
            }
        } else if let node1 = l1 {
            return node1
        }else {
            return l2
        }
    }
}
