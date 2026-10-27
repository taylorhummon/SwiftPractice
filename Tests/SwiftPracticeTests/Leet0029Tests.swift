import Testing
@testable import SwiftPractice

@Test func testLeet0029Idea1() {
    let idea = Leet0029Idea1()
    #expect(
        idea.divide(10, 3) == 3
    )
    #expect(
        idea.divide(2, 3) == 0
    )
    #expect(
        idea.divide(0, 3) == 0
    )
    #expect(
        idea.divide(7, -3) == -2
    )
    #expect(
        idea.divide(7, 0) == nil
    )
}
