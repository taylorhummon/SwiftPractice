import Testing
@testable import SwiftPractice

@Test func testLeet0088Idea1() {
    let idea = Leet0088Idea1()
    var arrayA = [1, 2, 3, 0, 0, 0]
    idea.merge(&arrayA, 3, [2, 5, 6], 3)
    #expect(
        arrayA == [1, 2, 2, 3, 5, 6]
    )
    var arrayB = [1]
    idea.merge(&arrayB, 1, [], 0)
    #expect(
        arrayB == [1]
    )
    var arrayC = [0]
    idea.merge(&arrayC, 0, [1], 1)
    #expect(
        arrayC == [1]
    )
}
