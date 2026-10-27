class ListNode : Equatable {
    var val: Int
    var next: ListNode?

    init() {
        self.val = 0
        self.next = nil
    }

    init(_ val: Int) {
        self.val = val
        self.next = nil
    }

    init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }

    static func == (
        left: ListNode,
        right: ListNode
    ) -> Bool {
        return left.val == right.val && left.next == right.next
    }
}
