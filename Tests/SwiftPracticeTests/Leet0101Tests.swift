import Testing
@testable import SwiftPractice

@Test func testLeet0101Idea1() {
    let idea = Leet0101Idea1()
    #expect(
        idea.isSymmetric(nil) == true
    )
    #expect(
        idea.isSymmetric(TreeNode(5)) == true
    )
    #expect(
        idea.isSymmetric(TreeNode(5, TreeNode(3), TreeNode(3))) == true
    )
    #expect(
        idea.isSymmetric(TreeNode(5, TreeNode(3), TreeNode(2))) == false
    )
    #expect(
        idea.isSymmetric(TreeNode(5, TreeNode(3, TreeNode(4), TreeNode(2)), TreeNode(3, TreeNode(2), TreeNode(4)))) == true
    )
    #expect(
        idea.isSymmetric(TreeNode(5, TreeNode(3, TreeNode(4), TreeNode(2)), TreeNode(3, TreeNode(4), TreeNode(2)))) == false
    )
}
