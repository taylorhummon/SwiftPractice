import Testing
@testable import SwiftPractice

@Test func testLeet0023Idea1() {
    let idea = Leet0023Idea1()
    #expect(
        idea.mergeKLists([
            ListNode.fromArray([1, 4, 5]),
            ListNode.fromArray([1, 3, 4]),
            ListNode.fromArray([2, 6]),
        ])
        ==
        ListNode.fromArray([1, 1, 2, 3, 4, 4, 5, 6])
    )
    #expect(
        idea.mergeKLists([]) == ListNode.fromArray([])
    )
    #expect(
        idea.mergeKLists([ListNode.fromArray([])]) == ListNode.fromArray([])
    )
}

@Test func testLeet0023Idea2() {
    let idea = Leet0023Idea2()
    #expect(
        idea.mergeKLists([
            ListNode.fromArray([1, 4, 5]),
            ListNode.fromArray([1, 3, 4]),
            ListNode.fromArray([2, 6]),
        ])
        ==
        ListNode.fromArray([1, 1, 2, 3, 4, 4, 5, 6])
    )
    #expect(
        idea.mergeKLists([]) == ListNode.fromArray([])
    )
    #expect(
        idea.mergeKLists([ListNode.fromArray([])]) == ListNode.fromArray([])
    )
}
