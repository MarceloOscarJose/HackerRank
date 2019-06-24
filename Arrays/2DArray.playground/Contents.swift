import UIKit

func hourglassSum(arr: [[Int]]) -> Int {

    var x = 0
    var y = 0
    let maxWidth = arr[0].count
    let maxHeight = arr.count
    var maxHour: Int!

    while(y <= maxHeight - 3) {
        var hourGlass = 0

        for indexY in y...y+2 {
            for indexX in x...x+2 {
                if indexY != y+1 || (indexX != x && indexX != x+2) {
                    hourGlass += arr[indexY][indexX]
                }
            }
        }

        if maxHour == nil || maxHour < hourGlass {
            maxHour = hourGlass
        }
        x += 1
        if x > maxWidth - 3 {
            x = 0
            y += 1
        }
    }

    return maxHour
}

let values = [
    [-9, -9, -9,  1, 1, 1],
    [0 , -9,  0,  4, 3, 2],
    [-9, -9, -9,  1, 2, 3],
    [0 ,  0,  8,  6, 6, 0],
    [0 ,  0,  0, -2, 0, 0],
    [0 ,  0,  1,  2, 4, 0],
]

print(hourglassSum(arr: values))
