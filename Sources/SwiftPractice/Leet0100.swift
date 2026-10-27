/*
100. Same Tree

Given the roots of two binary trees p and q, write a function to check if they are the same or not.

Two binary trees are considered the same if they are structurally identical, and the nodes have the
same value.

Example 1:
    Input: p = [1,2,3], q = [1,2,3]
    Output: true

Example 2:
    Input: p = [1,2], q = [1,null,2]
    Output: false

Example 3:
    Input: p = [1,2,1], q = [1,1,2]
    Output: false

Constraints:
    The number of nodes in both trees is in the range [0, 100].
    -10**4 <= Node.val <= 10**4
*/

struct Leet0100Idea1 {
    func isSameTree(
        _ p: TreeNode?,
        _ q: TreeNode?
    ) -> Bool {
        if p == nil && q == nil {
            return true
        }
        guard let p = p else {
            return false
        }
        guard let q = q else {
            return false
        }
        if p.val != q.val {
            return false
        }
        if !isSameTree(p.left, q.left) {
            return false
        }
        if !isSameTree(p.right, q.right) {
            return false
        }
        return true
    }
}
