import Testing
@testable import SwiftPractice

@Test func testLeet0058Idea1() {
    let idea = Leet0058Idea1()
    #expect(
        idea.lengthOfLastWord("Hello World") == 5
    )
    #expect(
        idea.lengthOfLastWord("   fly me   to   the moon  ") == 4
    )
    #expect(
        idea.lengthOfLastWord("luffy is still joyboy") == 6
    )
    #expect(
        idea.lengthOfLastWord("burritos") == 8
    )
    #expect(
        idea.lengthOfLastWord("") == -1
    )
    #expect(
        idea.lengthOfLastWord("   ") == -1
    )
}

@Test func testLeet0058Idea2() {
    let idea = Leet0058Idea2()
    #expect(
        idea.lengthOfLastWord("Hello World") == 5
    )
    #expect(
        idea.lengthOfLastWord("   fly me   to   the moon  ") == 4
    )
    #expect(
        idea.lengthOfLastWord("luffy is still joyboy") == 6
    )
    #expect(
        idea.lengthOfLastWord("burritos") == 8
    )
    #expect(
        idea.lengthOfLastWord("") == -1
    )
    #expect(
        idea.lengthOfLastWord("   ") == -1
    )
}
