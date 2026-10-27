/*
83. Remove Duplicates from Sorted List

Given the head of a sorted linked list, delete all duplicates such that each element appears only once. Return the linked list sorted as well.

Constraints:
    The number of nodes in the list is in the range [0, 300].
    -100 <= Node.val <= 100
    The list is guaranteed to be sorted in ascending order.
*/

/*
Idea 1
Recursive. Move one node at a time.
*/

struct Leet0083Idea1 {
    func deleteDuplicates(
        _ head: ListNode?
    ) -> ListNode? {
        guard let head = head else {
            return nil
        }
        guard let next = head.next else {
            return head
        }
        let rest = deleteDuplicates(next)
        // Just skip over head if head.val is the same as next.val
        if next.val == head.val {
            return rest
        }
        // Include head if its value differs from next.val
        else {
            return ListNode(head.val, rest)
        }
    }
}

/*
Idea 2
Recursive. Use a while loop to skip long lists of duplicates.
*/

struct Leet0083Idea2 {
    func deleteDuplicates(
        _ head: ListNode?
    ) -> ListNode? {
        guard let head = head else {
            return nil
        }
        let value = head.val
        var node: ListNode? = head.next
        // Skip over any nodes with node.val equal to head.val
        while node != nil && node!.val == value {
            // This is safe because we just ensured readNode is not nil
            node = node!.next
        }
        let rest = deleteDuplicates(node)
        return ListNode(value, rest)
    }
}

/*
Idea 3
Iterative.
*/

struct Leet0083Idea3 {
    func deleteDuplicates(
        _ head: ListNode?
    ) -> ListNode? {
        let resultHolder = ListNode(0, nil)
        var lastWrittenNode: ListNode = resultHolder
        var readNode = head
        while readNode != nil {
            // This is safe because we just ensured readNode is not nil
            let value = readNode!.val
            let newLastNode = ListNode(value, nil)

            // Add newLastNode to the end of the list
            lastWrittenNode.next = newLastNode

            // Update lastWrittenNode to refer to newLastNodeS
            lastWrittenNode = newLastNode

            // Skip over any nodes that have val equal to the value of newLastNode
            while readNode != nil && readNode!.val == value {
                // This is safe because we just ensured readNode is not nil
                readNode = readNode!.next
            }
        }
        return resultHolder.next
    }
}
