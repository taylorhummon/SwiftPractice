/*
See https://leetcode.com/problems/remove-element/

27. Remove Element

Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The
order of the elements may be changed. Then return the number of elements in nums which are not
equal to val.

Consider the number of elements in nums which are not equal to val be k, to get accepted, you need
to do the following things:
    * Change the array nums such that the first k elements of nums contain the elements which are
      not equal to val. The remaining elements of nums are not important as well as the size of
      nums.
    * Return k.
*/

/*
Idea
Keep two indices for numbers, one where we write to and one (ahead) where we read from.
Skip writing any instances of value.
*/

struct Leet0027Idea1 {
    func removeElement(
        _ numbers: inout [Int],
        _ value: Int
    ) -> Int {
        // where we write to in numbers
        var i = 0
        // where we read from in numbers
        var j = 0
        let n = numbers.count
        while j < n {
            while j < n && numbers[j] == value {
                j += 1
            }
            if j < n {
                numbers[i] = numbers[j]
                i += 1
            }
            j += 1
        }
        return i
    }
}
