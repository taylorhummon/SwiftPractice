import Testing
@testable import SwiftPractice

@Test func testLeet0012Idea1() {
    let idea = Leet0012Idea1()
    #expect(
        idea.romanFromInt(1) == "I"
    )
    #expect(
        idea.romanFromInt(3) == "III"
    )
    #expect(
        idea.romanFromInt(4) == "IV"
    )
    #expect(
        idea.romanFromInt(8) == "VIII"
    )
    #expect(
        idea.romanFromInt(9) == "IX"
    )
    #expect(
        idea.romanFromInt(3749) == "MMMDCCXLIX"
    )
    #expect(
        idea.romanFromInt(58) == "LVIII"
    )
    #expect(
        idea.romanFromInt(1994) == "MCMXCIV"
    )
}
