import Testing
@testable import SwiftPractice

@Test func testListNodeFromArray() {
    #expect(
        ListNode.fromArray([1, 2, 3]) == ListNode(1, ListNode(2, ListNode(3, nil)))
    )
    #expect(
        ListNode.fromArray([]) == nil
    )
}

@Test func testListNodeToArray() {
    #expect(
        ListNode.toArray(ListNode(1, ListNode(2, ListNode(3, nil)))) == [1, 2, 3]
    )
    #expect(
        ListNode.toArray(nil) == []
    )
}
