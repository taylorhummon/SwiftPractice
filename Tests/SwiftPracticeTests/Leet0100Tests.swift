import Testing
@testable import SwiftPractice

@Test func testLeet0100Idea1() {
    let idea = Leet0100Idea1()
    #expect(
        idea.isSameTree(nil, nil) == true
    )
    #expect(
        idea.isSameTree(
            TreeNode(5),
            TreeNode(5),
        ) == true
    )
    #expect(
        idea.isSameTree(
            TreeNode(5),
            TreeNode(3),
        ) == false
    )
    #expect(
        idea.isSameTree(
            TreeNode(5),
            TreeNode(5, nil, nil),
        ) == true
    )
    #expect(
        idea.isSameTree(
            TreeNode(5),
            TreeNode(5, TreeNode(0), nil),
        ) == false
    )
    #expect(
        idea.isSameTree(
            TreeNode(5, TreeNode(1), TreeNode(2)),
            TreeNode(5, TreeNode(1), TreeNode(2)),
        ) == true
    )
    #expect(
        idea.isSameTree(
            TreeNode(5, TreeNode(1), TreeNode(2)),
            TreeNode(5, TreeNode(2), TreeNode(1)),
        ) == false
    )
}
