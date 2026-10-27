import Testing
@testable import SwiftPractice

@Test func testLeet0035Idea1() {
    let idea = Leet0035Idea1()
    #expect(
        idea.insertionIndex([1, 3, 5, 6], 5) == 2
    )
    #expect(
        idea.insertionIndex([1, 3, 5, 6], 2) == 1
    )
    #expect(
        idea.insertionIndex([1, 3, 5, 6], 7) == 4
    )
}
