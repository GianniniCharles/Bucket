import Foundation

let data = [
[1,1,1,0,0,0],
[0,1,0,0,0,0],
[1,1,1,0,0,0],
[0,0,2,4,4,0],
[0,0,0,2,0,0],
[0,0,1,2,4,0],
]

func hourglassSum(arr: [[Int]]) -> Int {
    let rowIndicesSet = Set(arr.indices)
    var maxValue: Int?
    
    for rowIndex in arr.indices {
        guard rowIndicesSet.contains(rowIndex), rowIndicesSet.contains(rowIndex + 1), rowIndicesSet.contains(rowIndex + 2) else {
            break
        }
        
        for itemIndex in arr[rowIndex].indices {
            let itemIndexSet = Set(arr[rowIndex].indices)
            guard itemIndexSet.contains(itemIndex), itemIndexSet.contains(itemIndex - 1), itemIndexSet.contains(itemIndex + 1) else {
                continue
            }
                        
            let topLeftVal = arr[rowIndex][itemIndex - 1]
            let topCenterVal = arr[rowIndex][itemIndex]
            let topRightVal = arr[rowIndex][itemIndex + 1]
            let midCenterVal = arr[rowIndex + 1][itemIndex]
            let botLeftVal = arr[rowIndex + 2][itemIndex - 1]
            let botCenterVal = arr[rowIndex + 2][itemIndex]
            let botRightVal = arr[rowIndex + 2][itemIndex + 1]

            let eachHourglassSum = topLeftVal + topCenterVal + topRightVal + midCenterVal + botLeftVal + botCenterVal + botRightVal
            
            if let currentMaxValue = maxValue {
                if eachHourglassSum > currentMaxValue {
                    maxValue = eachHourglassSum
                }
            } else {
                maxValue = eachHourglassSum
            }
        }
    }
    
    print(maxValue ?? 0)
    return maxValue ?? 0
}

hourglassSum(arr: data)
