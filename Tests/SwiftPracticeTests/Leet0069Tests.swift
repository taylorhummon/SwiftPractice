import Testing
@testable import SwiftPractice

@Test func testLeet0069Idea1() {
    let idea = Leet0069Idea1()
    #expect(
        idea.sqrt(4) == 2
    )
    #expect(
        idea.sqrt(8) == 2
    )
    #expect(
        idea.sqrt(1) == 1
    )
    #expect(
        idea.sqrt(0) == 0
    )
    #expect(
        idea.sqrt(-1) == nil
    )
}
