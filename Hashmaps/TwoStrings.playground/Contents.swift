import UIKit

func twoStrings(s1: String, s2: String) -> String {

    let words = s1.reduce([String: Int]()) { (dict, word) -> [String: Int] in
        var dict = dict
        dict[String(word)] = 1
        return dict
    }

    print(words)
    for word in s2 {
        if let _ = words[String(word)] {
            return "YES"
        }
    }

    return "NO"
}

let str = "Hello"
let str1 = "world"

print(twoStrings(s1: str, s2: str1))
