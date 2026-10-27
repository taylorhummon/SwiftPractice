/*
70. Climbing Stairs

You are climbing a staircase. It takes n steps to reach the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

Constraints:
    1 <= n <= 45
*/

/*
Idea 1
To calculate, n = 5, we just need to know values for n = 4 and n = 3. In fact,
we'll just add the n = 4 and n = 3 values. This is just Fibonacci! Let's generate
solutions from the bottom up.
*/

struct Leet0070Idea1 {
    func climbingStairsCount(
        _ n: Int
    ) -> Int? {
        guard n >= 0 else {
            return nil
        }
        if n == 0 {
            return 1
        }
        var previous = 1    // n = 0
        var current = 1     // n = 1
        for _ in 1 ..< n {
            let next = previous + current
            previous = current
            current = next
        }
        return current
    }
}
