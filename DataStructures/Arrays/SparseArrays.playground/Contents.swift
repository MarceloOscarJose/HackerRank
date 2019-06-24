import UIKit

func matchingStrings(strings: [String], queries: [String]) -> [Int] {
    var results: [Int] = []

    for value in queries {
        results.append(strings.filter{ value == $0 }.count)
    }

    return results
}

let str = ["aba", "baba", "aba", "xzxb"]
let str1 = ["aba", "xzxb", "ab"]

print(matchingStrings(strings: str, queries: str1))
