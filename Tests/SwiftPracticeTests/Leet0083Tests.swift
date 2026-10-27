import Testing
@testable import SwiftPractice

@Test func testLeet0083Idea1() {
    let idea = Leet0083Idea1()
    #expect(
        idea.deleteDuplicates(ListNode.fromArray([1, 1, 2])) == ListNode.fromArray([1, 2])
    )
    #expect(
        idea.deleteDuplicates(ListNode.fromArray([1, 1, 2, 3, 3])) == ListNode.fromArray([1, 2, 3])
    )
    #expect(
        idea.deleteDuplicates(ListNode.fromArray([])) == ListNode.fromArray([])
    )
    #expect(
        idea.deleteDuplicates(ListNode.fromArray([19])) == ListNode.fromArray([19])
    )
}

@Test func testLeet0083Idea2() {
    let idea = Leet0083Idea2()
    #expect(
        idea.deleteDuplicates(ListNode.fromArray([1, 1, 2])) == ListNode.fromArray([1, 2])
    )
    #expect(
        idea.deleteDuplicates(ListNode.fromArray([1, 1, 2, 3, 3])) == ListNode.fromArray([1, 2, 3])
    )
    #expect(
        idea.deleteDuplicates(ListNode.fromArray([])) == ListNode.fromArray([])
    )
    #expect(
        idea.deleteDuplicates(ListNode.fromArray([19])) == ListNode.fromArray([19])
    )
}

@Test func testLeet0083Idea3() {
    let idea = Leet0083Idea3()
    #expect(
        idea.deleteDuplicates(ListNode.fromArray([1, 1, 2])) == ListNode.fromArray([1, 2])
    )
    #expect(
        idea.deleteDuplicates(ListNode.fromArray([1, 1, 2, 3, 3])) == ListNode.fromArray([1, 2, 3])
    )
    #expect(
        idea.deleteDuplicates(ListNode.fromArray([])) == ListNode.fromArray([])
    )
    #expect(
        idea.deleteDuplicates(ListNode.fromArray([19])) == ListNode.fromArray([19])
    )
}
