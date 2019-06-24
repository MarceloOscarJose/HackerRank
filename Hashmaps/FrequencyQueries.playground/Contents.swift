import UIKit

func freqQuery(queries: [[Int]]) -> [Int] {

    var numFreq: [Int: Int] = [:]
    var freqNum: [Int: Int] = [:]

    var result: [Int] = []

    for value in queries {

        let op = value[0]
        let key = value[1]

        if op == 3 {
            if let val = freqNum[key], val > 0 {
                result.append(1)
            } else {
                result.append(0)
            }
        } else {
            if op == 1 {
                if let val = numFreq[key] {
                    freqNum.updateValue(freqNum[val]! - 1, forKey: val)
                    numFreq.updateValue(+1, forKey: key)
                    freqNum.updateValue(+1, forKey: val + 1)
                } else {
                    numFreq[key] = 1

                    if let val = freqNum[1] {
                        freqNum[1] = val + 1
                    } else {
                        freqNum[1] = 1
                    }
                }
            } else {
                if let val = numFreq[key] {
                    if val > 0 {
                        freqNum.updateValue(freqNum[val]! - 1, forKey: val)
                        numFreq.updateValue(val - 1, forKey: key)
                        freqNum.updateValue(+1, forKey: val - 1)
                    }
                }
            }
        }
    }

    return result
}

let caseA = [
    [3, 5],
    [3, 3],
    [1, 10000004],
    [1, 10000016],
    [1, 10000011],
    [1, 10000037],
    [1, 10000006],
    [1, 10000025],
    [1, 10000021],
    [1, 10000002],
    [1, 10000013],
    [1, 10000013],
    [3, 10],
    [3, 5],
    [2, 4],
    [2, 3],
    [2, 6],
    [3, 10],
    [3, 3],
    [3, 10],
    [3, 10],
    [2, 7]
    
]

print(freqQuery(queries: caseA))
