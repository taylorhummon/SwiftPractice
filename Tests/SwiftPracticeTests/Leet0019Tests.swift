import Testing
@testable import SwiftPractice

@Test func testLeet0019Idea1() {
    let idea = Leet0019Idea1()
    #expect(
        idea.removeNthFromEnd(ListNode.fromArray([1, 2, 3, 4, 5]), 2) == ListNode.fromArray([1, 2, 3, 5])
    )
    #expect(
        idea.removeNthFromEnd(ListNode.fromArray([1]), 1) == ListNode.fromArray([])
    )
    #expect(
        idea.removeNthFromEnd(ListNode.fromArray([1, 2]), 1) == ListNode.fromArray([1])
    )
}
