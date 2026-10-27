import Testing
@testable import SwiftPractice

@Test func testLeet0011Idea1() {
    let idea = Leet0011Idea1()
    #expect(
        idea.mostWater([1, 8, 6, 2, 5, 4, 8, 3, 7]) == 49
    )
    #expect(
        idea.mostWater([1, 1]) == 1
    )
    #expect(
        idea.mostWater([7]) == 0
    )
    #expect(
        idea.mostWater([]) == 0
    )
}

@Test func testLeet0011Idea2() {
    let idea = Leet0011Idea2()
    #expect(
        idea.mostWater([1, 8, 6, 2, 5, 4, 8, 3, 7]) == 49
    )
    #expect(
        idea.mostWater([1, 1]) == 1
    )
    #expect(
        idea.mostWater([7]) == 0
    )
    #expect(
        idea.mostWater([]) == 0
    )
}
