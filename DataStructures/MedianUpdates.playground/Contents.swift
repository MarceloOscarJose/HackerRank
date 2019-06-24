import UIKit

var elementList: [Int] = []

func medianUpdate(operation: String, number: Int) {

    if operation == "r" {
        if let index = elementList.index(of: number) {
            elementList.remove(at: index)
        } else {
            print("Wrong!")
            return
        }
    } else {
        elementList.append(number)
    }

    elementList.sort()

    if elementList.count > 0 {

        let middleIndex = elementList.count / 2

        if elementList.count % 2 != 0 {
            print("\(elementList[middleIndex])")
        } else {
            let decimalM = Double(elementList[middleIndex - 1] + elementList[middleIndex]) / 2
            let finalOutPut = decimalM.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", decimalM) : String(decimalM)
            print("\(finalOutPut)")
        }
    } else {
        print("Wrong!")
    }
}

var stringLines: [String] = []
/*readLine()
while let thing = readLine() {
    stringLines.append(thing)
}*/

do {
    guard let fileUrl = Bundle.main.url(forResource: "input", withExtension: "txt") else { fatalError() }
    let data = try Data(contentsOf: fileUrl)
    if let text = String(bytes: data, encoding: .ascii) {
        stringLines = text.split(separator: "\n").map { String($0) }
        stringLines.removeFirst()
    }
} catch {
    print(error)
}

for line in stringLines {
    let slicedString = line.split(separator: " ")
    medianUpdate(operation: String(slicedString.first!), number: Int(String(slicedString.last!))!)
}
