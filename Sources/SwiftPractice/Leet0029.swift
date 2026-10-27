/*
See https://leetcode.com/problems/divide-two-integers/

29. Divide Two Integers

Given two integers dividend and divisor, divide two integers without using multiplication,
division, and mod operator.

The integer division should truncate toward zero, which means losing its fractional part. For
example, 8.345 would be truncated to 8, and -2.7335 would be truncated to -2.

Return the quotient after dividing dividend by divisor.

Note: Assume we are dealing with an environment that could only store integers within the 32-bit
signed integer range: [−2**31, 2**31 − 1]. For this problem, if the quotient is strictly greater
than 2**31 - 1, then return 2**31 - 1, and if the quotient is strictly less than -2**31, then
return -2**31.

Example 1:
    Input: dividend = 10, divisor = 3
    Output: 3
    Explanation: 10/3 = 3.33333.. which is truncated to 3.

Example 2:
    Input: dividend = 7, divisor = -3
    Output: -2
    Explanation: 7/-3 = -2.33333.. which is truncated to -2.

Constraints:
    -2**31 <= dividend, divisor <= 2**31 - 1
    divisor != 0
*/

/*
Idea
Use bit shifting to avoid having to do repeated addition.
*/

struct Leet0029Idea {
    func divide(
        _ numerator: Int32,
        _ denominator: Int32
    ) -> Int32 {
        if denominator == 0 {
            // This should throw, but leetcode won't let me.
            return Int32.max
        }
        if numerator == Int32.min {
            if denominator == -1 {
                // The correct math answer here is Int32.max + 1, but that's an overflow.
                // The problem asks us to return Int.max in this case.
                return Int32.max
            }
            if denominator == 1 {
                return Int32.min
            }
        }

        // All of our answers should now fit in Int32. But we still have to be careful
        // in our intermediate calcualations.
        // For example, don't take the absolute value of Int32.min.

        // Let's decide now whether our result is negative.
        let isResultNegative = (denominator > 0 && numerator < 0) || (denominator < 0 && numerator > 0)

        // And now let's convert numerator and denominator to their negative versions.
        var numerator = if numerator > 0 { -numerator } else { numerator }
        let denominator = if denominator > 0 { -denominator } else { denominator }

        // This is where we'll build our result
        var quotient: Int32 = 0

        // while abs(numerator) >= abs(denominator)
        while numerator <= denominator {
            var shiftCount: Int32 = 0
            while case let shifted = denominator << shiftCount, numerator - shifted <= shifted {
                shiftCount += 1
            }
            quotient += 1 << shiftCount
            numerator -= denominator << shiftCount
        }
        if isResultNegative {
            return 0 - quotient
        }
        else {
            return quotient
        }
    }
}
