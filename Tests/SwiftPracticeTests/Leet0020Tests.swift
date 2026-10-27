import Testing
@testable import SwiftPractice

@Test func testLeet0020Idea1() {
    let idea = Leet0020Idea1()
    #expect(
        idea.isValid("()") == true
    )
    #expect(
        idea.isValid("()[]{}") == true
    )
    #expect(
        idea.isValid("(]") == false
    )
    #expect(
        idea.isValid("([])") == true
    )
    #expect(
        idea.isValid("([)]") == false
    )
}
