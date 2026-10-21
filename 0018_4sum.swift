/*
See https://leetcode.com/problems/4sum/

18. 4Sum

Given an array nums of n integers, return an array of all the unique quadruplets
[nums[a], nums[b], nums[c], nums[d]] such that:
    0 <= a, b, c, d < n
    a, b, c, and d are distinct.
    nums[a] + nums[b] + nums[c] + nums[d] == target

You may return the answer in any order.

Example 1:
    Input: nums = [1,0,-1,0,-2,2], target = 0
    Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]

Example 2:
    Input: nums = [2,2,2,2,2], target = 8
    Output: [[2,2,2,2]]

Constraints:
    1 <= nums.length <= 200
    -10**9 <= nums[i] <= 10**9
    -10**9 <= target <= 10**9
*/

/*
Idea
Let's sort the array of numbers we're given.

    [-4, -3, -1, 2, 3, 5]

We'll assume a < b < c < d.
We'll choose all a and b satisfying a < b.
Then, we'll:
    move c from b + 1 to the right and
    move d from top to the left
*/

class Solution {
    func fourSum(
        _ numbers: [Int],
        _ target: Int
    ) -> [[Int]] {
        var results = [[Int]]()
        guard numbers.count >= 4 else {
            return results
        }
        let numbers = numbers.sorted()
        let top = numbers.count - 1
        var a = 0

        // We subtract 3 to leave room for b, c, and d above a
        while a <= top - 3 {
            let numberAtA = numbers[a]
            var b = a + 1

            // We subtract 2 to leave room for c and d above b
            while b <= top - 2 {
                let numberAtB = numbers[b]
                var c = b + 1
                var d = top

                // We'll loop until c and d meet in the middle
                while c < d {
                    let numberAtC = numbers[c]
                    let numberAtD = numbers[d]
                    let total = numberAtA + numberAtB + numberAtC + numberAtD
                    if total < target {
                        // move c right until we find a new value for numbers[c]
                        while c < d && numbers[c] == numberAtC {
                            c += 1
                        }
                    }
                    else if total > target {
                        // move d left until we find a new value for numbers[d]
                        while c < d && numbers[d] == numberAtD {
                            d -= 1
                        }
                    }
                    else {
                        // we found a solution!
                        results.append([numberAtA, numberAtB, numberAtC, numberAtD])

                        // move c right until we find a new value for numbers[c]
                        while c < d && numbers[c] == numberAtC {
                            c += 1
                        }

                        // move d left until we find a new value for numbers[d]
                        while c < d && numbers[d] == numberAtD {
                            d -= 1
                        }
                    }
                }

                // move b right until we find a new value for numbers[b]
                while b <= top - 2 && numbers[b] == numberAtB {
                    b += 1
                }
            }

            // move a right until we find a new value for numbers[a]
            while a <= top - 3 && numbers[a] == numberAtA {
                a += 1
            }
        }

        return results
    }
}
