import Foundation

func repeatedString(s: String, n: Int) -> Int {

    let repatString = n / s.count + 1

    var aLetter = 0
    for letter in s {
        if letter == "a" {
            aLetter += 1
        }
    }

    aLetter = aLetter * repatString

    let totalLetters = repatString * s.count
    let lettersDiff = totalLetters - n

    for value in s.suffix(lettersDiff) {
        if value == "a" {
            aLetter -= 1
        }
    }

    return aLetter
}

print(repeatedString(s: "gfcaaaecbg", n: 547602))
