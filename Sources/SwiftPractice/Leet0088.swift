/*
88. Merge Sorted Array

You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers
m and n, representing the number of elements in nums1 and nums2 respectively.

Merge nums1 and nums2 into a single array sorted in non-decreasing order.

The final sorted array should not be returned by the function, but instead be stored inside the
array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote
the elements that should be merged, and the last n elements are set to 0 and should be ignored.
nums2 has a length of n.

Constraints:
    nums1.length == m + n
    nums2.length == n
    0 <= m, n <= 200
    1 <= m + n <= 200
    -10**9 <= nums1[i], nums2[j] <= 10**9
*/

/*
Idea 1
Find the largest value between the two lists of numbers, then put that at the end of numbers1.
Decrease m or n as appropriate.
Repeat, regarding numbers1 as defined through the (new) first m integers.
*/

struct Leet0088Idea1 {
    func merge(
        _ numbers1: inout [Int],
        _ m: Int,
        _ numbers2: [Int],
        _ n: Int
    ) -> Void {
        // where we're reading from in numbers1
        var i = m - 1

        // where we're reading from in numbers2
        var j = n - 1

        while i >= 0 || j >= 0 {
            // where we're writing to in numbers1
            let k = i + j + 1

            // if we've run out of i values
            if i < 0 {
                numbers1[k] = numbers2[j]
                j -= 1
            }

            // if we've run out of j values
            else if j < 0 {
                numbers1[k] = numbers1[i]
                i -= 1
            }

            // if we should grab a number from numbers1
            else if numbers1[i] >= numbers2[j] {
                numbers1[k] = numbers1[i]
                i -= 1
            }

            // if we should grab a number from numbers2
            else {
                numbers1[k] = numbers2[j]
                j -= 1
            }
        }
    }
}
