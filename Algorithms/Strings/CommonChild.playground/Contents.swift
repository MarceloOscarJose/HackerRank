import UIKit

func commonChild(s1: String, s2: String) -> Int {

    var max = ""
    var commonWords: [String] = []

    for word in s2 {
        if s1.contains(String(word)) && !commonWords.contains(String(word)) {
            commonWords.append(String(word))
        }
    }

    var start = 0
    var end = 0
    var commonWords1 = s1.filter { commonWords.contains(String($0)) }

    print(commonWords)
    print(commonWords1)
    return max.count
}

let str = "SHINCHAN"
let str1 = "NOHARAAA"

commonChild(s1: str, s2: str1)
