import Testing
@testable import SwiftPractice

@Test func testLeet0016Idea1() {
    let idea = Leet0016Idea1()
    #expect(
        idea.threeSumClosest([-1, 2, 1, -4], 1) == 2
    )
    #expect(
        idea.threeSumClosest([0, 0, 0], 1) == 0
    )
}
