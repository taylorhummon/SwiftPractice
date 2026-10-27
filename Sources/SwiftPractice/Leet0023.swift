/*
See https://leetcode.com/problems/merge-k-sorted-lists/

23. Merge k Sorted Lists

You are given an array of k linked-lists lists, each linked-list is sorted in ascending order.

Merge all the linked-lists into one sorted linked-list and return it.

Constraints:
    k == lists.length
    0 <= k <= 104
    0 <= lists[i].length <= 500
    -10**4 <= lists[i][j] <= 10**4
    lists[i] is sorted in ascending order.
    The sum of lists[i].length will not exceed 10**4.
*/

/*
Idea 1
1. Remove any empty linked lists.
2. Look at the head of each list and find one with a smallest value.
3. Stick that node on to a result linked list.
4. If reducing one of the linked lists made it empty, remove it from consideration.
5. Repeat from step 2.

To cut down on the number of checks for the minimum, we could store the heads of the
linked lists in a min priority queue. Unfortunately, I can't import a min priority
queue data structure in leetcode (and I'd rather not implement one) so, I'm just
going to store linked list heads in a sorted array. This way:
- It's cheap to pop off the list with minimum head.
- It's cheap to decide where to store a list.
Inserting is a little expensive if the number of lists is large.
*/

import Foundation

struct Leet0023Idea1 {
    func mergeKLists(
        _ lists: [ListNode?]
    ) -> ListNode? {
        guard !lists.isEmpty else {
            return nil
        }

        let resultHolder = ListNode()
        var latest = resultHolder

        // Remove nil lists
        var lists: [ListNode] = lists.compactMap { $0 }

        // Store the lists in descending order by val.
        lists.sort(using: KeyPathComparator(\.val, order: .reverse))
        while !lists.isEmpty {
            // The following always succeeds because lists is non-empty
            let list = lists.popLast()!

            // Create a list node
            let listNode = ListNode(list.val)

            // Store the new list node
            latest.next = listNode

            // Advance latest to point at the new list node
            latest = listNode

            if let shorterList = list.next {
                insertListIntoSortedLists(list: shorterList, sortedLists: &lists)
            }
        }
        return resultHolder.next
    }

    private func insertListIntoSortedLists(
        list: ListNode,
        sortedLists: inout [ListNode]
    ) -> Void {
        if sortedLists.isEmpty {
            sortedLists.append(list)
        }
        // Should the list be inserted at the front of sortedLists?
        else if list.val >= sortedLists[0].val {
            sortedLists.insert(list, at: 0)
        }
        // Should the list be inserted at the back of sortedLists?
        else if list.val <= sortedLists[sortedLists.count - 1].val {
            sortedLists.append(list)
        }
        // Use bisect search to find where to insert list into sortedLists.
        else {
            let target = list.val
            var left = 0
            var right = sortedLists.count - 1
            while left + 1 < right {
                let middle = (left + right) / 2
                if sortedLists[middle].val <= target {
                    right = middle
                }
                else {
                    left = middle
                }
            }
            if sortedLists[left].val == target {
                sortedLists.insert(list, at: left)
            }
            else {
                sortedLists.insert(list, at: right)
            }
        }
    }
}

/*
Idea 2
Repeatedly merge pairs of lists until there's only one left.
*/

struct Leet0023Idea2 {
    func mergeKLists(
        _ lists: [ListNode?]
    ) -> ListNode? {
        var lists: [ListNode?] = lists
        var mergedLists: [ListNode?]
        guard !lists.isEmpty else {
            return nil
        }
        while lists.count >= 2 {
            mergedLists = []
            for i in stride(from: 0, to: lists.count, by: 2) {
                let listA = lists[i]
                let listB = i + 1 < lists.count ? lists[i + 1] : nil
                mergedLists.append(mergeTwo(listA, listB))
            }
            lists = mergedLists
        }
        return lists[0]
    }

    private func mergeTwo(
        _ listA: ListNode?,
        _ listB: ListNode?
    ) -> ListNode? {
        guard let listA = listA else {
            return listB
        }
        guard let listB = listB else {
            return listA
        }

        let resultFirst: ListNode
        var resultLast: ListNode
        var remainingA: ListNode?
        var remainingB: ListNode?
        if listA.val <= listB.val {
            resultFirst = listA
            resultLast = listA
            remainingA = listA.next
            remainingB = listB
        }
        else {
            resultFirst = listB
            resultLast = listB
            remainingA = listA
            remainingB = listB.next
        }

        while remainingA != nil || remainingB != nil {
            guard let nodeA = remainingA else {
                resultLast.next = remainingB
                break
            }
            guard let nodeB = remainingB else {
                resultLast.next = remainingA
                break
            }

            if nodeA.val <= nodeB.val {
                remainingA = nodeA.next
                // Advance resultLast to be nodeA
                resultLast.next = nodeA
                resultLast = nodeA
                resultLast.next = nil
            }
            else {
                remainingB = nodeB.next
                // Advance resultLast to be nodeB
                resultLast.next = nodeB
                resultLast = nodeB
                resultLast.next = nil
            }
        }
        return resultFirst
    }
}
