/*
See https://leetcode.com/problems/letter-combinations-of-a-phone-number/

17. Letter Combinations of a Phone Number

Given a string containing digits from 2-9 inclusive, return all possible letter combinations that
the number could represent. Return the answer in any order.

A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1
does not map to any letters.

Example 1:
    Input: digits = "23"
    Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

Example 2:
    Input: digits = "2"
    Output: ["a","b","c"]

Constraints:
    1 <= digits.length <= 4
    digits[i] is a digit in the range ['2', '9'].
*/

/*
Idea 1
Make each (3 or 4) choice of first letter, recurse to generate the rests, and then return the product.

Idea 2
Define what it means to take the product of two arrays. Map then reduce.

Idea 3
Generate the list as a stream.
If each of the character lists had length three, then we could just use a base 3 representation of integers and incrementing. We can roll some sort of similar increment by hand for (base 3 or occasionally 4).
*/

let characterLists = [
    [" "], // 0
    [], // 1
    ["a", "b", "c"],
    ["d", "e", "f"],
    ["g", "h", "i"],
    ["j", "k", "l"],
    ["m", "n", "o"],
    ["p", "q", "r", "s"],
    ["t", "u", "v"],
    ["w", "x", "y", "z"]
]

class Solution {
    func letterCombinations(
        _ digits: String
    ) -> [String] {
        let digitsAsIntegerArray: [Int] = Array(digits).compactMap {
            character in Int(String(character))
        }
        return solution3(digitsAsIntegerArray)
    }

    func solution1(
        _ digits: [Int]
    ) -> [String] {
        return helper(digits.reversed())
    }

    private func helper(
        _ digits: [Int]
    ) -> [String] {
        var digits = digits
        if let digit = digits.popLast() {
            return product(characterLists[digit], helper(digits))
        } else {
            return [""]
        }
    }

    func solution2(
        _ digits: [Int]
    ) -> [String] {
        return digits.map { digit in characterLists[digit] }.reduce([""], { a, b in product(a, b) })
    }

    private func product(
        _ arrayA: [String],
        _ arrayB: [String]
    ) -> [String] {
        var results = [String]()
        for a in arrayA {
            for b in arrayB {
                results.append(a + b)
            }
        }
        return results
    }

    func solution3(
        _ digits: [Int]
    ) -> [String] {
        guard !digits.isEmpty else {
            return []
        }
        let wordIterator = WordIterator(digits: digits)
        var words = [String]()
        while let word = wordIterator.next() {
            words.append(word)
        }
        return words
    }
}

class WordIterator: IteratorProtocol {
    var isDone = false
    let digits: [Int]
    var indices: [Int]
    let tops: [Int]

    init(
        digits: [Int]
    ) {
        self.digits = digits

        // start with all indices equal to zero
        indices = [Int](repeating: 0, count: digits.count)

        // what's the largest a given index can get
        tops = digits.map { digit in characterLists[digit].count - 1}
    }

    func next(
    ) -> String? {
        if isDone {
            // reset the iterator
            isDone = false
            return nil
        }
        let currentString = getCurrentString()
        isDone = advance()
        return currentString
    }

    private func getCurrentString(
    ) -> String {
        var string = ""
        string.reserveCapacity(digits.count)
        for i in 0 ..< digits.count {
            let character = characterLists[digits[i]][indices[i]]
            string.append(character)
        }
        return string
    }

    private func advance(
    ) -> Bool {
        for i in 0 ..< digits.count {
            if indices[i] < tops[i] {
                indices[i] += 1
                return false
            }
            indices[i] = 0
        }
        return true
    }
}
