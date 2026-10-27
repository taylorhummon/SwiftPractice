import Testing
@testable import SwiftPractice

@Test func testLeet0001Idea1() throws {
    let idea = Leet0001Idea1()
    #expect(
        try idea.indexPair([2, 7, 11, 15], 9) == (1, 0)
    )
    #expect(
        try idea.indexPair([3, 2, 4], 6) == (2, 1)
    )
    #expect(
        try idea.indexPair([3, 3], 6) == (0, 1)
    )
    #expect(throws: NoSolutionFound.self) {
        try idea.indexPair([3, 3], 0)
    }
}

@Test func testLeet0001Idea2() throws {
    let idea = Leet0001Idea2()
    #expect(
        try idea.indexPair([2, 7, 11, 15], 9) == (1, 0)
    )
    #expect(
        try idea.indexPair([3, 2, 4], 6) == (2, 1)
    )
    #expect(
        try idea.indexPair([3, 3], 6) == (1, 0)
    )
    #expect(throws: NoSolutionFound.self) {
        try idea.indexPair([3, 3], 0)
    }
}
