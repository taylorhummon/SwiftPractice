import Testing
@testable import SwiftPractice

@Test func testLeet0009Idea1() {
    let idea = Leet0009Idea1()
    #expect(
        idea.isPalindromeNumber(123) == false
    )
    #expect(
        idea.isPalindromeNumber(121) == true
    )
    #expect(
        idea.isPalindromeNumber(-121) == false
    )
    #expect(
        idea.isPalindromeNumber(0) == true
    )
    #expect(
        idea.isPalindromeNumber(9) == true
    )
    #expect(
        idea.isPalindromeNumber(4884) == true
    )
    #expect(
        idea.isPalindromeNumber(010) == false
    )
}

@Test func testLeet0009Idea2() {
    let idea = Leet0009Idea2()
    #expect(
        idea.isPalindromeNumber(123) == false
    )
    #expect(
        idea.isPalindromeNumber(121) == true
    )
    #expect(
        idea.isPalindromeNumber(-121) == false
    )
    #expect(
        idea.isPalindromeNumber(0) == true
    )
    #expect(
        idea.isPalindromeNumber(9) == true
    )
    #expect(
        idea.isPalindromeNumber(4884) == true
    )
    #expect(
        idea.isPalindromeNumber(010) == false
    )
}
