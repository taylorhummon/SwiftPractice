import Testing
@testable import SwiftPractice

@Test func testLeet0026Idea1() {
    let idea = Leet0026Idea1()
    var arrayA = [1, 1, 2]
    let resultA = idea.removeDuplicates(&arrayA)
    #expect(
        resultA == 2
    )
    #expect(
        Array(arrayA[0 ..< resultA]) == [1, 2]
    )
    var arrayB = [0,0,1,1,1,2,2,3,3,4]
    let resultB = idea.removeDuplicates(&arrayB)
    #expect(
        resultB == 5
    )
    #expect(
        Array(arrayB[0 ..< resultB]) == [0, 1, 2, 3, 4]
    )
}
