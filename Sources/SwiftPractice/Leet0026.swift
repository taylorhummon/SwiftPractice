/*
See https://leetcode.com/problems/remove-duplicates-from-sorted-array/

26. Remove Duplicates from Sorted Array

Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such
that each unique element appears only once. The relative order of the elements should be kept the
same.

Consider the number of unique elements in nums to be k​​​​​​​​​​​​​​. After removing duplicates, return the
number of unique elements k.

The first k elements of nums should contain the unique numbers in sorted order. The remaining
elements beyond index k - 1 can be ignored.

Constraints:
    1 <= nums.length <= 3 * 10**4
    -100 <= nums[i] <= 100
    nums is sorted in non-decreasing order.
*/

/*
Idea 1
Use two indices, one where we'll write to and one (ahead) where we'll read from.
*/

struct Leet0026Idea1 {
    func removeDuplicates(
        _ numbers: inout [Int]
    ) -> Int {
        let n = numbers.count

        // i is the index where we're going to write a number
        var i = 0

        // j is the index where we're reading from
        var j = 0
        while j < n {
            numbers[i] = numbers[j]
            j += 1
            while j < n && numbers[j] == numbers[i] {
                j += 1
            }
            i += 1
        }
        return i
    }
}
