import Testing
@testable import SwiftPractice

@Test func testLeet0018Idea1() {
    let idea = Leet0018Idea1()
    #expect(
        idea.fourSum([1, 0, -1, 0, -2, 2], 0) == [[-2, -1, 1, 2], [-2, 0, 0, 2], [-1, 0, 0, 1]]
    )
    #expect(
        idea.fourSum([2, 2, 2, 2, 2], 8) == [[2, 2, 2, 2]]
    )
}
