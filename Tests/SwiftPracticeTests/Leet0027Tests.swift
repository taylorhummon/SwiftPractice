import Testing
@testable import SwiftPractice

@Test func testLeet0027Idea1() {
    let idea = Leet0027Idea1()
    var arrayA = [3, 2, 2, 3]
    let resultA = idea.removeElement(&arrayA, 3)
    #expect(
        resultA == 2
    )
    #expect(
        Array(arrayA[0 ..< resultA]) == [2, 2]
    )
    var arrayB = [0, 1, 2, 2, 3, 0, 4, 2]
    let resultB = idea.removeElement(&arrayB, 2)
    #expect(
        resultB == 5
    )
    #expect(
        Array(arrayB[0 ..< resultB]) == [0, 1, 3, 0, 4]
    )
}
