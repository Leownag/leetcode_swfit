class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        let m = grid.count
        let n = grid[0].count

        var queue = [(Int, Int)]()

        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] != 0 {
                    queue.append((i, j))
                }
            }
        }

        var res = 0

        let directions = [(0, 1), (0, -1), (1, 0), (-1, 0)]
        //
        print(queue)
        while !queue.isEmpty {
            let (i, j) = queue.removeFirst()
            for (di, dj) in directions {
                let ni = i + di
                let nj = j + dj
                // 1.如果是超出範圍
                // 2. 如果是水
                if ni > m - 1 || ni < 0 || nj > n - 1 || nj < 0 {
                    print("AT", i, j, "Hit", ni, nj)
                    res += 1

                } else {
                    if grid[ni][nj] == 0 {
                        print("AT", i, j, "Hit", ni, nj)
                        res += 1
                    }
                }

                print(ni, nj, "RES", res)

            }
        }
        return res
    }
}

Solution().islandPerimeter([[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]])
