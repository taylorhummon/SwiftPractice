import Testing
@testable import SwiftPractice

@Test func testLeet0067Idea1() {
    let idea = Leet0067Idea1()
    #expect(
        idea.addBinary("11", "1") == "100"
    )
    #expect(
        idea.addBinary("1010", "1011") == "10101"
    )
    #expect(
        idea.addBinary("0", "0") == "0"
    )
}
