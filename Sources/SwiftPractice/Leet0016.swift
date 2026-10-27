/*
See https://leetcode.com/problems/3sum-closest/description/

16. 3Sum Closest

You are given an integer array nums of length n and an integer target.

Find three integers at distinct indices in nums such that the sum is closest to target.

Return the sum of the three integers.

You may assume that each input would have exactly one solution.

Example 1:
    Input: nums = [-1,2,1,-4], target = 1
    Output: 2
    Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).

Example 2:
    Input: nums = [0,0,0], target = 1
    Output: 0
    Explanation: The sum that is closest to the target is 0. (0 + 0 + 0 = 0).

Constraints:
    3 <= nums.length <= 500
    -1000 <= nums[i] <= 1000
    -10**4 <= target <= 10**4
*/

struct Leet0016Idea1 {
    func threeSumClosest(
        _ numbers: [Int],
        _ target: Int
    ) -> Int {
        guard numbers.count >= 3 else {
            return -1
        }
        let numbers = numbers.sorted()
        let top = numbers.count - 1
        var closest = numbers[0] + numbers[1] + numbers[2]
        var smallestDistance = abs(target - closest)

        // We subtract 2 to leave room for j and k above i
        for i in 0 ... top - 2 {

            // Start j just after i
            var j = i + 1

            // Start k at the top
            var k = top

            // We'll loop until j and k meet in the middle
            while j < k {
                let total = numbers[i] + numbers[j] + numbers[k]
                let distance = abs(target - total)
                if distance < smallestDistance {
                    closest = total
                    smallestDistance = distance
                }
                if total < target {
                    j += 1
                }
                else if total > target {
                    k -= 1
                }
                else {
                    return total
                }
            }
        }
        return closest
    }
}
