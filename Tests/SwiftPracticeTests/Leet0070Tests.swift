import Testing
@testable import SwiftPractice

@Test func testLeet0070Idea1() {
    let idea = Leet0070Idea1()
    #expect(
        idea.climbingStairsCount(-1) == nil
    )
    #expect(
        idea.climbingStairsCount(0) == 1
    )
    #expect(
        idea.climbingStairsCount(1) == 1
    )
    #expect(
        idea.climbingStairsCount(2) == 2
    )
    #expect(
        idea.climbingStairsCount(3) == 3
    )
    #expect(
        idea.climbingStairsCount(4) == 5
    )
}
