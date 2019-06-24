import UIKit

func maximumToys(prices: [Int], k: Int) -> Int {
    let pricesSorted = prices.sorted()
    var amount = 0
    var toys = 0

    for value in pricesSorted {
        if value <= k && amount + value <= k {
            amount += value
            toys += 1
        } else {
            break
        }
    }

    return toys
}

let prices = [1, 12, 5, 111, 200, 1000, 10]
print(maximumToys(prices: prices, k: 50))
