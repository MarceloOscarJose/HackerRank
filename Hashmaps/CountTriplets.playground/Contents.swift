import UIKit

func countTriplets(arr: [Int], r: Int) -> Int {

    var map2: [Int: Int] = [:]
    var map3: [Int: Int] = [:]

    var result = 0

    for value in arr {
        if let val = map3[value] {
            result += val
        }

        if let map2Val = map2[value] {
            if let map3Val = map3[value*r] {
                map3.updateValue(map3Val + map2Val, forKey: value*r)
            } else {
                map3.updateValue(map2Val, forKey: value*r)
            }
        }

        map2.updateValue((map2[value*r] ?? 0) + 1, forKey: value*r)

        print(map2)
        print(map3)
    }

    return result
}

let caseA = [1, 2, 2, 4]
print(countTriplets(arr: caseA, r: 2))
