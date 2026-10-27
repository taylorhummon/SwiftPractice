class ListNode : Equatable {
    var val: Int
    var next: ListNode?

    init(
    ) {
        self.val = 0
        self.next = nil
    }

    init(
        _ val: Int
    ) {
        self.val = val
        self.next = nil
    }

    init(
        _ val: Int,
        _ next: ListNode?
    ) {
        self.val = val
        self.next = next
    }

    static func == (
        left: ListNode,
        right: ListNode
    ) -> Bool {
        return left.val == right.val && left.next == right.next
    }

    static func fromArray(
        _ integers: [Int]
    ) -> ListNode? {
        var result: ListNode? = nil
        for i in stride(from: integers.count - 1, through: 0, by: -1) {
            result = ListNode(integers[i], result)
        }
        return result
    }

    static func toArray(
        _ listNode: ListNode?
    ) -> [Int] {
        var integers: [Int] = []
        var list: ListNode? = listNode
        while let listNode = list {
            integers.append(listNode.val)
            list = listNode.next
        }
        return integers
    }
}
