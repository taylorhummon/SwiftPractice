import Testing
@testable import SwiftPractice

@Test func testLeet0015Idea1() {
    let idea = Leet0015Idea1()
    #expect(
        idea.threeSum([-1, 0, 1, 2, -1, -4]) == [[-1, -1, 2], [-1, 0, 1]]
    )
    #expect(
        idea.threeSum([0, 1, 1]) == []
    )
    #expect(
        idea.threeSum([0, 0, 0]) == [[0, 0, 0]]
    )
}
