//You are given two linked lists representing two non-negative numbers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
//
//Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
//Output: 7 -> 0 -> 8

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func addTwoNumbers(l1: ListNode?, _ l2: ListNode?) -> ListNode? {
       return appendTwoNumber(l1,l2,0)
    }
    
    func appendTwoNumber(l1: ListNode?, _ l2: ListNode?, _ breaknumber: Int) ->ListNode?{
       guard let node1 = l1 else{
           return appendOneNumber(l2,breaknumber)
       }
       guard let node2 = l2 else{
           return appendOneNumber(node1,breaknumber)
       }
       
        var val = node1.val + node2.val + breaknumber
        var node = ListNode(val%10)
        node.next = appendTwoNumber(node1.next,node2.next,val/10)
        return node
    }
    
    func appendOneNumber(l: ListNode?,_ breaknumber: Int) -> ListNode? {
        switch breaknumber{
            case 0:
            guard let node = l else{
            return nil
            }
            return node
            case 1:
            guard let node = l else{
                var node1 = ListNode(1)
                return node1
            }
            var val = node.val + 1
            node.val = val%10
            node.next = appendOneNumber(node.next,val/10)
            return node
            
            default: break
        }
        return nil
    }
}