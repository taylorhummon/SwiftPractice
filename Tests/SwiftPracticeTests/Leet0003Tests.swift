import Testing
@testable import SwiftPractice

let leet0003Ideas: [Leet0003Idea] = [
    Leet0003Idea1(),
    Leet0003Idea2(),
]

@Test("All leet0003 ideas work", arguments: leet0003Ideas)
func testLeet0003Ideas(idea: any Leet0003Idea) {
    #expect(
        idea.lengthOfLongestNonRepeatingSubstring("abcabcbb") == 3
    )
    #expect(
        idea.lengthOfLongestNonRepeatingSubstring("bbbbb") == 1
    )
    #expect(
        idea.lengthOfLongestNonRepeatingSubstring("pwwkew") == 3
    )
    #expect(
        idea.lengthOfLongestNonRepeatingSubstring("") == 0
    )
}
