import Testing
@testable import SwiftPractice

@Test func testLeet0005Idea1() throws {
    let idea = Leet0005Idea1()
    #expect(
        idea.longestPalindrome("babad") == "bab" || idea.longestPalindrome("babad") == "aba"
    )
    #expect(
        idea.longestPalindrome("cbbd") == "bb"
    )
    #expect(
        idea.longestPalindrome("aracecar") == "racecar"
    )
    #expect(
        idea.longestPalindrome("a") == "a"
    )
    #expect(
        idea.longestPalindrome("") == ""
    )
}
