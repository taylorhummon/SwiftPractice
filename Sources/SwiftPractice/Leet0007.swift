/*
See https://leetcode.com/problems/reverse-integer/

7. Reverse Integer

Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value
to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

Constraints:
    -2**31 <= x <= 2**31 - 1
*/

/*
Idea 1
Implement toDigits for non-negative numbers.
Implement fromDigits in a way that checks for overflow.
Convert to digits, reverse the digits, convert from digits.
*/

struct Leet0007Idea1 {
    func reverseInteger(
        _ x: Int32
    ) -> Int32 {
        if x >= 0 {
            let digits = Array(toDigits(x).reversed())
            guard let result = fromDigits(digits) else {
                return 0
            }
            return result
        }
        // Use a special case for x = Int32.min because abs(Int32.min) overflows
        else if x == Int32.min {
            // -2147483648 reversed is -8463847412, which is out of range
            return 0
        }
        // x is negative and abs(x) does not overflow
        else {
            let digits = Array(toDigits(abs(x)).reversed())
            guard let result = fromDigits(digits) else {
                return 0
            }
            return -result
        }
    }

    private func toDigits(
        _ x: Int32
    ) -> [Int32] {
        precondition(x >= 0, "toDigits() takes a non-negative integer")
        if x == 0 {
            return [0]
        }
        var x = x
        var digits = [Int32]()
        while x > 0 {
            digits.append(x % 10)
            x /= 10
        }
        return digits
    }

    private func fromDigits(
        _ digits: [Int32]
    ) -> Int32? {
        var digits = digits
        var result = Int32(0)
        while !digits.isEmpty {
            let digit = digits.popLast()!

            // Check if multiplying result by ten would overflow
            guard result <= topOverTen else {
                return nil
            }
            result *= 10

            // Check if adding digit to result would overflow
            guard result <= Int32.max - digit else {
                return nil
            }
            result += digit
        }
        return result
    }

    private let topOverTen = Int32.max / 10
}

/*
Idea 2
Similar to idea 1, but avoid using a digits array.
*/

struct Leet0007Idea2 {
    func reverseInteger(
        _ x: Int32
    ) -> Int32 {
        if x >= 0 {
            if let result = helper(x) {
                return result
            } else {
                return 0
            }
        }
        // Use a special case for Int32.min because abs(Int32.min) overflows
        else if x == -2147483648 {
            // -8463847412 is out of range
            return 0
        }
        // x is negative and abs(x) does not overflow
        else {
            if let result = helper(-x) {
                return -result
            } else {
                return 0
            }
        }
    }

    private func helper(
        _ x: Int32
    ) -> Int32? {
        precondition(x >= 0, "helper() takes a non-negative integer")
        var x = x
        var result = Int32(0)
        while x > 0 {
            let digit = x % 10

            // Check if multiplying result by ten would overflow
            guard result <= topOverTen else {
                return nil
            }
            result *= 10

            // Check if adding digit to result would overflow
            guard result <= Int32.max - digit else {
                return nil
            }
            result += digit
            x /= 10
        }
        return result
    }

    private let topOverTen = Int32.max / 10
}
