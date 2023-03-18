class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        // represent have to add 1 to head line
        var carry = 1

        var nums = digits

        for i in (0..<nums.count).reversed() {
            nums[i] += 1
            if nums[i] < 10 {
                carry = 0
                break
            } else {
                nums[i] = 0
            }
        }
        
        if carry == 1 {
            nums.insert(1, at:0)
        }

        return nums
    }
}
