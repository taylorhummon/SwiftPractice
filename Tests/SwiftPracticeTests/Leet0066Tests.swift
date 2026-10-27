import Testing
@testable import SwiftPractice

@Test func testLeet0066Idea1() {
    let idea = Leet0066Idea1()
    #expect(
        idea.plusOne([1, 2, 3]) == [1, 2, 4]
    )
    #expect(
        idea.plusOne([4, 3, 2, 1]) == [4, 3, 2, 2]
    )
    #expect(
        idea.plusOne([9]) == [1, 0]
    )
    #expect(
        idea.plusOne([0]) == [1]
    )
}
