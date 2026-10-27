import Testing
@testable import SwiftPractice

@Test func testLeet0008Idea1() {
    let idea = Leet0008Idea1()
    #expect(
        idea.atoi("123") == 123
    )
    #expect(
        idea.atoi("+123") == 123
    )
    #expect(
        idea.atoi("-123") == -123
    )
    #expect(
        idea.atoi("123q") == 123
    )
    #expect(
        idea.atoi("") == 0
    )
    #expect(
        idea.atoi("one") == 0
    )
}
