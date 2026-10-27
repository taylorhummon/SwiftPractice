/*
See https://leetcode.com/problems/3sum/

15. 3Sum

Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that
i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

Notice that the solution set must not contain duplicate triplets.

Constraints:
    3 <= nums.length <= 3000
    -10**5 <= nums[i] <= 10**5
*/

/*
Idea
Let's sort the array of numbers we're given.

    [-4, -3, -1, 2, 3, 5]

We'll assume i < j < k.
Fix each possible i.
Use a left and right pointer to search for combinations.
*/

struct Leet0015Idea1 {
    func threeSum(
        _ numbers: [Int]
    ) -> [[Int]] {
        let numbers = numbers.sorted()
        let top = numbers.count - 1
        var results: [[Int]] = []
        var i = 0

        // We subtract 2 to leave room for j and k above i
        while i <= top - 2 {
            let target = -numbers[i]

            // Start j just after i
            var j = i + 1

            // Start k at the top
            var k = top

            // We'll loop until j and k meet in the middle
            while j < k {
                let candidate = numbers[j] + numbers[k]

                // candidate is too small, so move j right
                if candidate < target {
                    j += 1
                }

                // candidate is too large, so move k left
                else if candidate > target {
                    k -= 1
                }

                // candidate equal to target
                else {
                    // we found a solution!
                    results.append([numbers[i], numbers[j], numbers[k]])

                    // move j right until we find a new numbers[j]
                    let foundOnLeft = numbers[j]
                    j += 1
                    while j < k && numbers[j] == foundOnLeft {
                        j += 1
                    }

                    // move k left until we find a new numbers[k]
                    let foundOnRight = numbers[k]
                    k -= 1
                    while j < k && numbers[k] == foundOnRight {
                        k -= 1
                    }
                }
            }

            // advance i until we find a new numbers[i]
            let found = numbers[i]
            i += 1
            while i <= top - 2 && numbers[i] == found {
                i += 1
            }
        }
        return results
    }
}
