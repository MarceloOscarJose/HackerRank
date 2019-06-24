import UIKit

func countSwaps(a: [Int]) -> Void {
    var arr = a
    var swaps = 0

    for _ in 0..<arr.count - 1 {
        for index1 in 0..<arr.count - 1 {
            if arr[index1] > arr[index1 + 1] {
                arr.swapAt(index1, index1 + 1)
                swaps += 1
            }
        }
    }

    print("Array is sorted in \(swaps) swaps.")
    print("First Element: \(arr.first!)")
    print("Last Element: \(arr.last!)")
}

let arr = [6, 4, 1]
countSwaps(a: arr)
