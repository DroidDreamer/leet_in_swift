//24. 两两交换链表中的节点

//给定一个链表，两两交换其中相邻的节点，并返回交换后的链表。
//
//示例:
//
//给定 1->2->3->4, 你应该返回 2->1->4->3.
//说明:
//
//你的算法只能使用常数的额外空间。
//你不能只是单纯的改变节点内部的值，而是需要实际的进行节点交换。


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        if head?.next == nil {
            return head
        }
        
        var first = head?.next
        var temp = head?.next?.next
        head?.next?.next = head
        
        head?.next = swapPairs(temp)
        
        return first
        
    }
}
