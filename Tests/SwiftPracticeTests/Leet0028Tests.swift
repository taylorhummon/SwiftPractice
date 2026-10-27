import Testing
@testable import SwiftPractice

@Test func testLeet0028Idea1() {
    let idea = Leet0028Idea1()
    #expect(
        idea.substringIndex("sadbutsad", "sad") == 0
    )
    #expect(
        idea.substringIndex("leetcode", "leeto") == -1
    )
    #expect(
        idea.substringIndex("juniper", "juniper") == 0
    )
    #expect(
        idea.substringIndex("a", "abc") == -1
    )
}

@Test func testLeet0028Idea2() {
    let idea = Leet0028Idea2()
    #expect(
        idea.substringIndex("sadbutsad", "sad") == 0
    )
    #expect(
        idea.substringIndex("leetcode", "leeto") == -1
    )
    #expect(
        idea.substringIndex("juniper", "juniper") == 0
    )
    #expect(
        idea.substringIndex("a", "abc") == -1
    )
}
