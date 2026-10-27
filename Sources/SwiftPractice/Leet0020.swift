/*
See https://leetcode.com/problems/valid-parentheses/

20. Valid Parentheses

Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the
input string is valid.

An input string is valid if:
    Open brackets must be closed by the same type of brackets.
    Open brackets must be closed in the correct order.
    Every close bracket has a corresponding open bracket of the same type.

Constraints:
    1 <= s.length <= 10**4
    s consists of parentheses only '()[]{}'.
*/

struct Leet0020Idea1 {
    func isValid(
        _ string: String
    ) -> Bool {
        let openByClosed: [Character: Character] = [
            ")": "(",
            "]": "[",
            "}": "{",
        ]
        let opens: Set<Character> = Set(openByClosed.values)
        var stack = [Character]()
        for character in string {
            if opens.contains(character) {
                stack.append(character)
                continue
            }
            if let open = openByClosed[character] {
                // If we don't have the correct bracket to close, we're sunk
                if stack.isEmpty || stack.popLast() != open {
                    return false
                }
                continue
            }

            // Found an unknown character
            return false
        }

        // Make sure we've matched all open parens
        return stack.isEmpty
    }
}
