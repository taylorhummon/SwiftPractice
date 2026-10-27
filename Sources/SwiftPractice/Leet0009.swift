/*
See https://leetcode.com/problems/palindrome-number/

9. Palindrome Number

Given an integer x, return true if x is a palindrome, and false otherwise.

Constraints:
    -2**31 <= x <= 2**31 - 1
*/

/*
Idea 1
Generate the digits as an array.
Check that the first digit matches the last, second matches penultimate, ... up to the middle.
*/

struct Leet0009Idea1 {
    func isPalindromeNumber(
        _ x: Int
    ) -> Bool {
        guard x >= 0 else {
            return false
        }
        let digits = toDigits(x)

        // We can use integer division here because we don't need to check the middle
        // character in an odd length palindrome.
        for i in 0 ..< digits.count / 2 {
            if digits[i] != digits[digits.count - 1 - i] {
                return false
            }
        }
        return true
    }

    private func toDigits(
        _ x: Int
    ) -> [Int] {
        precondition(x >= 0, "toDigits() takes a non-negative integer")
        if x == 0 {
            return [0]
        }
        var x = x
        var digits: [Int] = []
        while x > 0 {
            digits.append(x % 10)
            x /= 10
        }
        return digits
    }
}

/*
Idea 2
Build the reverse number with modulo and integer division without calculating an
array of digits. Then compare the reverse number to the original number.
*/

struct Leet0009Idea2 {
    func isPalindromeNumber(
        _ x: Int
    ) -> Bool {
        guard x >= 0 else {
            return false
        }
        var n = x
        var reversed = 0
        while n > 0 {
            reversed *= 10
            reversed += n % 10
            n /= 10
        }
        return reversed == x
    }
}

/*
Idea 3
Convert the number to a string and check whether the string is a palindrome.
*/

struct Leet0009Idea3 {
    func isPalindromeNumber(
        _ x: Int
    ) -> Bool {
        let string = String(x)
        var left = string.startIndex
        var right = string.index(string.endIndex, offsetBy: -1)
        while left < right {
            guard string[left] == string[right] else {
                return false
            }
            string.formIndex(after: &left)
            string.formIndex(before: &right)
        }
        return true
    }
}
