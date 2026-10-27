import Testing
@testable import SwiftPractice

@Test func testLeet0006Idea1() throws {
    let idea = Leet0006Idea1()
    #expect(
        try idea.zigZag("PAYPALISHIRING", 3) == "PAHNAPLSIIGYIR"
    )
    #expect(
        try idea.zigZag("PAYPALISHIRING", 4) == "PINALSIGYAHRPI"
    )
    #expect(
        try idea.zigZag("A", 1) == "A"
    )
    #expect(throws: NoSolutionFound.self) {
        try idea.zigZag("A", 0)
    }
}
