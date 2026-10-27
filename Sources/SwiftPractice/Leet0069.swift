/*
69. Sqrt(x)

Given a non-negative integer x, return the square root of x rounded down to the nearest integer.
The returned integer should be non-negative as well.

You must not use any built-in exponent function or operator.

Constraints:
    0 <= x <= 2**31 - 1
*/

/*
Idea 1
Bisect search.
*/

struct Leet0069Idea1 {
    func sqrt(
        _ n: Int
    ) -> Int? {
        guard n >= 0 else {
            return nil
        }
        if n == 0 || n == 1 {
            return n
        }
        var left = 0
        var right = n
        while left + 1 < right {
            let middle = (left + right) / 2
            let middleSquared = middle * middle
            if middleSquared < n {
                left = middle
            }
            else if middleSquared > n {
                right = middle
            }
            else {
                return middle
            }
        }
        return left
    }
}
