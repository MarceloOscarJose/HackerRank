import UIKit

func minimumBribes(q: [Int]) -> Void {
    var list = q
    let orderedList = q.sorted()
    var chaotic: Bool = false
    var changes: [String: Int] = [:]
    var movements = 0

    repeat {
        for (index, _) in list.enumerated() {
            if index < list.count - 1 {
                if list[index] > list[index + 1] {
                    let aux = list[index]

                    if let value = changes[String(aux)] {
                        changes.updateValue(value + 1, forKey: String(aux))
                        if value + 1 > 2 {
                            chaotic = true
                            break;
                        }

                        movements += 1
                    } else {
                        changes.updateValue(1, forKey: String(aux))
                        movements += 1
                    }

                    list[index] = list[index + 1]
                    list[index + 1] = aux
                }
            }
        }
    } while(!chaotic && list != orderedList)

    if chaotic {
        print("Too chaotic")
    } else {
        print(movements)
    }
}

let caseA = [2, 1, 5, 3, 4]
let caseB = [2, 5, 1, 3, 4]
let caseD = [1, 2, 5, 3, 4, 7, 8, 6]
minimumBribes(q: caseA)
