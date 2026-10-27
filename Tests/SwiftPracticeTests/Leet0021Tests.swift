import Testing
@testable import SwiftPractice

@Test func testLeet0021Idea1() {
    let idea = Leet0021Idea1()
    #expect(
        idea.mergeTwoLists(ListNode.fromArray([1, 2, 4]), ListNode.fromArray([1, 3, 4])) == ListNode.fromArray([1, 1, 2, 3, 4, 4])
    )
    #expect(
        idea.mergeTwoLists(ListNode.fromArray([]), ListNode.fromArray([])) == ListNode.fromArray([])
    )
    #expect(
        idea.mergeTwoLists(ListNode.fromArray([]), ListNode.fromArray([0])) == ListNode.fromArray([0])
    )
}
