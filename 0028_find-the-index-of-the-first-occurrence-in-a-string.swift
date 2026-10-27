/*
See https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/

28. Find the Index of the First Occurrence in a String

Given two strings needle and haystack, return the index of the first occurrence of needle in
haystack, or -1 if needle is not part of haystack.

Example 1:
    Input: haystack = "sadbutsad", needle = "sad"
    Output: 0
    Explanation: "sad" occurs at index 0 and 6.
    The first occurrence is at index 0, so we return 0.

Example 2:
    Input: haystack = "leetcode", needle = "leeto"
    Output: -1
    Explanation: "leeto" did not occur in "leetcode", so we return -1.

Constraints:
    1 <= haystack.length, needle.length <= 10**4
    haystack and needle consist of only lowercase English characters.
*/

/*
Idea 1
Convert the strings to arrays of characters. Then brute force.

Idea 2
Brute force using string indices.
*/

class Solution {
    // Leetcode named this. I'd prefer substringIndex().
    func strStr(
        _ haystack: String,
        _ needle: String
    ) -> Int {
        return solution2(haystack, needle)
    }

    func solution1(
        _ haystack: String,
        _ needle: String
    ) -> Int {
        let haystackArray = Array(haystack)
        let needleArray = Array(needle)
        let top = max(0, haystackArray.count - needleArray.count + 1)
        outerLoop: for i in 0 ..< top {
            for j in 0 ..< needleArray.count {
                // If we determine the needle doesn't begin at haystackArray[i],
                // start the next iteration of the outer loop.
                if needleArray[j] != haystackArray[i + j] {
                    continue outerLoop
                }
            }
            // We found the needle at index i in the haystack!
            return i
        }
        // We didn't find the needle in the haystack.
        return -1
    }

    func solution2(
        _ haystack: String,
        _ needle: String
    ) -> Int {
        guard haystack.count >= needle.count else {
            return -1
        }
        var i = haystack.startIndex
        var j: String.Index
        var k: String.Index
        outerLoop: while i < haystack.endIndex {
            j = needle.startIndex
            k = i
            while j < needle.endIndex {
                // If we determine the needle doesn't begin at haystackArray[i],
                // start the next iteration of the outer loop.
                if k >= haystack.endIndex || needle[j] != haystack[k] {
                    haystack.formIndex(after: &i)
                    continue outerLoop
                }
                needle.formIndex(after: &j)
                haystack.formIndex(after: &k)
            }
            // We found the needle at index i in the haystack!
            return haystack.distance(from: haystack.startIndex, to: i)
        }
        // We didn't find the needle in the haystack.
        return -1
    }
}
