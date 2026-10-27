import Testing
@testable import SwiftPractice

@Test func testLeet0007Idea1() {
    let idea = Leet0007Idea1()
    #expect(
        idea.reverseInteger(123) == 321
    )
    #expect(
        idea.reverseInteger(-123) == -321
    )
    #expect(
        idea.reverseInteger(120) == 21
    )
    #expect(
        idea.reverseInteger(0) == 0
    )
}

@Test func testLeet0007Idea2() {
    let idea = Leet0007Idea2()
    #expect(
        idea.reverseInteger(123) == 321
    )
    #expect(
        idea.reverseInteger(-123) == -321
    )
    #expect(
        idea.reverseInteger(120) == 21
    )
    #expect(
        idea.reverseInteger(0) == 0
    )
}
