import UIKit

var str = "Hello, playground"

//Capture lists in Swift: what’s the difference between weak, strong, and unowned references?


class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        for (index,val) in nums.enumerated() {
        
        for (index2,val2) in nums.enumerated() {
            if nums[val2] == val {
                nums.remove(at: index2)
            } else {
                return nums.count
            }
        }
    }
    return 0
  }
}

Solution.removeDuplicates([1,1,2])
