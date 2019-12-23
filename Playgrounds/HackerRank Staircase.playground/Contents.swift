import Foundation

// Complete the staircase function below.
func birthdayCakeCandles(ar: [Int]) -> Int {
    var blowableCandles = 0
    let totalCandles = ar.count
    for candle in ar.sorted(by: { $0 < $1}) {
        if candle == totalCandles {
            blowableCandles += 1
        }
    }
    return blowableCandles
}



func timeConversion(s: String) -> String {
    guard var hour = Int(s.prefix(2)) else { return s }
    
    if hour == 12 {
        hour = 0
    }
    switch s.suffix(2).lowercased() {
    case "pm": hour += 12
    default: break
    }
    
    var hour24 = "\(hour)"
    if hour < 10 {
        hour24.insert("0", at: hour24.startIndex)
    }
    
    let firstTwoRange = s.startIndex..<s.index(s.startIndex, offsetBy: 2)
    let convertedTime = String(s.replacingCharacters(in: firstTwoRange, with: hour24).dropLast(2))
    return convertedTime
}

print(timeConversion(s: "12:40:22AM"))
