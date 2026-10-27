import Testing
@testable import SwiftPractice

@Test func testLeet0022Idea1() {
    let idea = Leet0022Idea1()
    #expect(
        idea.generateParentheses(3).count == 5
    )
    #expect(
        idea.generateParentheses(3).sorted() == ["((()))", "(()())", "(())()", "()(())", "()()()"]
    )
    #expect(
        idea.generateParentheses(1).count == 1
    )
    #expect(
        idea.generateParentheses(1).sorted() == ["()"]
    )
    #expect(
        idea.generateParentheses(0).count == 1
    )
    #expect(
        idea.generateParentheses(0).sorted() == [""]
    )
}
