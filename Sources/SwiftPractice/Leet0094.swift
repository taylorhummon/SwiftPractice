/*
94. Binary Tree Inorder Traversal

Given the root of a binary tree, return the inorder traversal of its nodes' values.

Example 1:
    Input: root = [1,null,2,3]
    Output: [1,3,2]

Example 2:
    Input: root = [1,2,3,4,5,null,8,null,null,6,7,9]
    Output: [4,2,6,5,7,1,3,9,8]

Example 3:
    Input: root = []
    Output: []

Example 4:
    Input: root = [1]
    Output: [1]

Constraints:
    The number of nodes in the tree is in the range [0, 100].
    -100 <= Node.val <= 100
*/

/*
Idea 1
Recursion.
*/

struct Leet0094Idea1 {
    func inorderTraversal(
        _ root: TreeNode?
    ) -> [Int] {
        guard let node = root else {
            return []
        }
        return inorderTraversal(node.left) + [node.val] + inorderTraversal(node.right)
    }
}

/*
Idea 2
Iterative using a stack.
*/

struct Leet0094Idea2 {
    func inorderTraversal(
        _ root: TreeNode?
    ) -> [Int] {
        var result: [Int] = []
        var stack: [TreeNode] = []
        var node = root
        while node != nil {
            addLeftsToStack(&stack, node)
            node = backtrack(&stack, &result)
        }
        return result
    }

    private func addLeftsToStack(
        _ stack: inout [TreeNode],
        _ tree: TreeNode?
    ) -> Void {
        var tree = tree
        while let node = tree {
            stack.append(node)
            tree = node.left
        }
    }

    private func backtrack(
        _ stack: inout [TreeNode],
        _ result: inout [Int]
    ) -> TreeNode? {
        // Pop nodes off of the stack until one has a right child or we run out.
        while let node = stack.popLast() {
            result.append(node.val)
            if let rightChild = node.right {
                return rightChild
            }
        }
        return nil
    }
}
