class Solution {
    func nthUglyNumber(_ n: Int) -> Int {
        // factors by 2 3 5
        var res = Array(repeating: 0, count: n)
        res[0] = 1
        
        var running2 = 0
        var running3 = 0
        var running5 = 0
        
        for i in 1..<n {
            let ugly2 = res[running2] * 2
            // 2 4 6
            let ugly3 = res[running3] * 3
            // 3 6 9
            let ugly5 = res[running5] * 5
            // 5 10 15
            
            let minNum = min(ugly2, ugly3, ugly5)
            if minNum == ugly2 {
                running2 += 1
            }
            if minNum == ugly3 {
                running3 += 1
            }
            if minNum == ugly5 {
                running5 += 1
            }
            res[i] = minNum
        }
        return res.last!
    }
}
