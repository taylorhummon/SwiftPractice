import Testing
@testable import SwiftPractice

@Test func testLeet0013Idea1() throws {
    let idea = Leet0013Idea1()
    #expect(
        try idea.intFromRoman("III") == 3
    )
    #expect(
        try idea.intFromRoman("LVIII") == 58
    )
    #expect(
        try idea.intFromRoman("MCMXCIV") == 1994
    )
}
