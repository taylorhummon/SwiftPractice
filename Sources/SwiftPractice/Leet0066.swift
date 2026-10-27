/*
66. Plus One

You are given a large integer represented as an integer array digits, where each digits[i] is the
ith digit of the integer. The digits are ordered from most significant to least significant in
left-to-right order. The large integer does not contain any leading 0's.

Increment the large integer by one and return the resulting array of digits.

Constraints:
    1 <= digits.length <= 100
    0 <= digits[i] <= 9
    digits does not contain any leading 0's.
*/

/*
Idea 1
Reverse the digits so we can work left-to-right.
*/

struct Leet0066Idea1 {
    func plusOne(
        _ digits: [Int]
    ) -> [Int] {
        guard !digits.isEmpty else {
            return [1]
        }
        var digits = digits
        digits.reverse()
        digits[0] += 1
        let n = digits.count
        for i in 0 ..< n {
            if digits[i] <= 9 {
                break
            }
            digits[i] = 0
            if i == n - 1 {
                digits.append(1)
                break
            }
            digits[i + 1] += 1
        }
        digits.reverse()
        return digits
    }
}
