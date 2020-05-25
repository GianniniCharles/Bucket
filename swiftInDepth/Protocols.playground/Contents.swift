import Foundation

var str = "Hello, playground"

protocol CryptoCurrency {
    var name: String { get }
    var symbol: String { get }
    var holdings: Double { get set }
    var price: NSDecimalNumber? { get set }
}

struct Bitcoin: CryptoCurrency {
    let name = "Bitcoin"
    let symbol = "BTC"
    var holdings: Double
    var price: NSDecimalNumber?
}

struct Ethereum: CryptoCurrency {
    let name = "Ethereum"
    let symbol = "ETH"
    var holdings: Double
    var price: NSDecimalNumber?
}


final class Portfolio {
    var coins: [CryptoCurrency]
    
    init(coins: [CryptoCurrency]) {
        self.coins = coins
    }
    
    func addCoin(_ newCoin: CryptoCurrency) {
        coins.append(newCoin)
    }
}

func retrievePriceRunTime(coin: CryptoCurrency, completion: ((CryptoCurrency) -> Void)){
    var copy = coin
    copy.price = 6000
    completion(copy)
}

func retrievePriceCompileTime<Coin: CryptoCurrency>(coin: Coin, completion: ((Coin) -> Void)) {
    var copy = coin
    copy.price = 6000
    completion(copy)
}

let btc = Bitcoin(holdings: 3, price: nil)

retrievePriceRunTime(coin: btc) { (updatedCoin: CryptoCurrency) in
    print("Updated value runtime is \(updatedCoin.price?.doubleValue ?? 0)")
}

retrievePriceCompileTime(coin: btc) { (updatedCoin: Bitcoin) in
    print("Updated value compile time is \(updatedCoin.price?.doubleValue ?? 0)")
}

var array: [String] = ["One", "Two", "Three", "Four"]

let two = array[1]


//let coins = [
//    Ethereum(holdings: 4, price: 500),
////    Bitcoin(holdings: 4, price: 6000)
//]
//
//let portfolio = Portfolio(coins: coins)
//
//let btc = Bitcoin(holdings: 3, price: 5994)
//portfolio.addCoin(btc)
//
//print(portfolio.coins)


