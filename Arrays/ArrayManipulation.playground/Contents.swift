import UIKit

var queries: [[Int]] = [
    [1,5,3],
    [4,8,7],
    [6,9,1]
]

func arrayManipulation(n: Int, queries: [[Int]]) -> Int {

    var arr = Array(repeating: 0, count: n+1)

    queries.forEach{
        let a = $0[0]
        let b = $0[1]
        let k = $0[2]

        arr[a-1] += k
        arr[b] -= k
    }

    print(arr)

    let reducedArr = arr.reduce(into: (0,0), { result, number in
        result.0 += number
        result.1 = max(result.1, result.0)
        print("Los valores son \(result) - \(number)")
    })

    print(reducedArr)

    return reducedArr.1
}

print(arrayManipulation(n: 10, queries: queries))
