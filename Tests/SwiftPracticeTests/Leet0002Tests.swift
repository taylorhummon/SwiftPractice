import Testing
@testable import SwiftPractice

@Test func testLeet0002Idea1() {
    let idea = Leet0002Idea1()
    #expect(
        idea.add(
            ListNode.fromArray([2, 4, 3]),
            ListNode.fromArray([5, 6, 4])
        )
        ==
        ListNode.fromArray([7, 0, 8])
    )
    #expect(
        idea.add(
            ListNode.fromArray([0]),
            ListNode.fromArray([0])
        )
        ==
        ListNode.fromArray([0])
    )
    #expect(
        idea.add(
            ListNode.fromArray([9, 9, 9, 9, 9, 9, 9]),
            ListNode.fromArray([9, 9, 9, 9])
        )
        ==
        ListNode.fromArray([8, 9, 9, 9, 0, 0, 0, 1])
    )
}

@Test func testLeet0002Idea2() {
    let idea = Leet0002Idea2()
    #expect(
        idea.add(
            ListNode.fromArray([2, 4, 3]),
            ListNode.fromArray([5, 6, 4])
        )
        ==
        ListNode.fromArray([7, 0, 8])
    )
    #expect(
        idea.add(
            ListNode.fromArray([0]),
            ListNode.fromArray([0])
        )
        ==
        ListNode.fromArray([0])
    )
    #expect(
        idea.add(
            ListNode.fromArray([9, 9, 9, 9, 9, 9, 9]),
            ListNode.fromArray([9, 9, 9, 9])
        )
        ==
        ListNode.fromArray([8, 9, 9, 9, 0, 0, 0, 1])
    )
}
