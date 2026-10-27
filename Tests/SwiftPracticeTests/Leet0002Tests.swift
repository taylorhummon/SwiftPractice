import Testing
@testable import SwiftPractice

@Test func testLeet0002Idea1() {
    let idea = Leet0002Idea1()
    #expect(
        idea.add(
            ListNode(2, ListNode(4, ListNode(3, nil))),
            ListNode(5, ListNode(6, ListNode(4, nil))),
        )
        ==
        ListNode(7, ListNode(0, ListNode(8, nil)))
    )
    #expect(
        idea.add(
            ListNode(0, nil),
            ListNode(0, nil),
        )
        ==
        ListNode(0, nil)
    )
    #expect(
        idea.add(
            ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, nil))))))),
            ListNode(9, ListNode(9, ListNode(9, ListNode(9, nil)))),
        )
        ==
        ListNode(8, ListNode(9, ListNode(9, ListNode(9, ListNode(0, ListNode(0, ListNode(0, ListNode(1, nil))))))))
    )
}

@Test func testLeet0002Idea2() {
    let idea = Leet0002Idea2()
    #expect(
        idea.add(
            ListNode(2, ListNode(4, ListNode(3, nil))),
            ListNode(5, ListNode(6, ListNode(4, nil))),
        )
        ==
        ListNode(7, ListNode(0, ListNode(8, nil)))
    )
    #expect(
        idea.add(
            ListNode(0, nil),
            ListNode(0, nil),
        )
        ==
        ListNode(0, nil)
    )
    #expect(
        idea.add(
            ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, nil))))))),
            ListNode(9, ListNode(9, ListNode(9, ListNode(9, nil)))),
        )
        ==
        ListNode(8, ListNode(9, ListNode(9, ListNode(9, ListNode(0, ListNode(0, ListNode(0, ListNode(1, nil))))))))
    )
}
