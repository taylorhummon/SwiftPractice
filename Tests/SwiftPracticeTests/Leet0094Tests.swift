import Testing
@testable import SwiftPractice

@Test func testLeet0094Idea1() {
    let idea = Leet0094Idea1()
    #expect(
        idea.inOrderTraversal(nil) == []
    )
    #expect(
        idea.inOrderTraversal(TreeNode(7)) == [7]
    )
    #expect(
        idea.inOrderTraversal(TreeNode(1, TreeNode(2), TreeNode(3))) == [2, 1, 3]
    )
    #expect(
        idea.inOrderTraversal(TreeNode(1, TreeNode(2, TreeNode(3), TreeNode(4)), TreeNode(5))) == [3, 2, 4, 1, 5]
    )
}

@Test func testLeet0094Idea2() {
    let idea = Leet0094Idea2()
    #expect(
        idea.inOrderTraversal(nil) == []
    )
    #expect(
        idea.inOrderTraversal(TreeNode(7)) == [7]
    )
    #expect(
        idea.inOrderTraversal(TreeNode(1, TreeNode(2), TreeNode(3))) == [2, 1, 3]
    )
    #expect(
        idea.inOrderTraversal(TreeNode(1, TreeNode(2, TreeNode(3), TreeNode(4)), TreeNode(5))) == [3, 2, 4, 1, 5]
    )
}
