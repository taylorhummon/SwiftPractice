import Testing
@testable import SwiftPractice

private func sortedListFromPair(
    _ pair: (Int, Int)
) -> [Int] {
    let (left, right) = pair
    return [min(left, right), max(left, right)]
}

@Test func testLeet0001Idea1() throws {
    let idea = Leet0001Idea1()
    #expect(
        sortedListFromPair(try idea.indexPair([2, 7, 11, 15], 9)) == [0, 1]
    )
    #expect(
        sortedListFromPair(try idea.indexPair([3, 2, 4], 6)) == [1, 2]
    )
    #expect(
        sortedListFromPair(try idea.indexPair([3, 3], 6)) == [0, 1]
    )
    #expect(throws: NoSolutionFound.self) {
        try idea.indexPair([3, 3], 0)
    }
}

@Test func testLeet0001Idea2() throws {
    let idea = Leet0001Idea2()
    #expect(
        sortedListFromPair(try idea.indexPair([2, 7, 11, 15], 9)) == [0, 1]
    )
    #expect(
        sortedListFromPair(try idea.indexPair([3, 2, 4], 6)) == [1, 2]
    )
    #expect(
        sortedListFromPair(try idea.indexPair([3, 3], 6)) == [0, 1]
    )
    #expect(throws: NoSolutionFound.self) {
        try idea.indexPair([3, 3], 0)
    }
}
