/*
94. Binary Tree In-Order Traversal

Given the root of a binary tree, return the in-order traversal of its nodes' values.

Constraints:
    The number of nodes in the tree is in the range [0, 100].
    -100 <= Node.val <= 100
*/

/*
Idea 1
Recursion.
*/

struct Leet0094Idea1 {
    func inOrderTraversal(
        _ root: TreeNode?
    ) -> [Int] {
        guard let node = root else {
            return []
        }
        return inOrderTraversal(node.left) + [node.val] + inOrderTraversal(node.right)
    }
}

/*
Idea 2
Iterative using a stack.
*/

struct Leet0094Idea2 {
    func inOrderTraversal(
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
