import UIKit

func minimumSwaps(arr: [Int]) -> Int {
    var list = arr
    var movements = 0
    var index = 0

    while index < list.count - 1 {

        if list[index] != index + 1 {
            let tmp = list[list[index] - 1]
            list[list[index] - 1] = list[index]
            list[index] = tmp
            movements += 1
        } else {
            index += 1
        }
    }

    return movements
}

let caseA = [1, 3, 5, 2, 4, 6, 7]
print(minimumSwaps(arr: caseA))
