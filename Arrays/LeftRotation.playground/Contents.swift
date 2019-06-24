import UIKit

func rotLeft(a: [Int], d: Int) -> [Int] {
    var list: [Int] = a
    let distance = a.count - d

    for (index, _) in a.enumerated() {
        let newIndex = index + distance <= a.count - 1 ? index + distance : (index + distance - a.count)
        print("\(index) : \(newIndex)")
        list[newIndex] = a[index]
    }

    return list
}

let a = [33, 47, 70, 37, 8, 53, 13, 93, 71, 72, 51, 100, 60, 87, 97]
let d = 13

print(rotLeft(a: a, d: d))
