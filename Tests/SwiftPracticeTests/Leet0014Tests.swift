import Testing
@testable import SwiftPractice

@Test func testLeet0014Idea1() {
    let idea = Leet0014Idea1()
    #expect(
        idea.longestCommonPrefix(["flower", "flow", "flight"]) == "fl"
    )
    #expect(
        idea.longestCommonPrefix(["dog", "racecar", "car"]) == ""
    )
    #expect(
        idea.longestCommonPrefix([]) == ""
    )
}
