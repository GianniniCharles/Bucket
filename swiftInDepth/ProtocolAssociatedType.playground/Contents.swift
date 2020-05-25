import Foundation

var str = "Hello, playground"


protocol Worker {
    
    associatedtype Input
    associatedtype Output
    
    @discardableResult
    func start(input: Input) -> Output
}



class MailJob: Worker {
//    typealias Input = String
//    typealias Output = Bool
    
    func start(input: String) -> Bool {
        return input.isEmpty
    }
}

class FileRemover: Worker {
//    typealias Input = URL
//    typealias Output = [String]
    
    func start(input: URL) -> [String] {
        return [input.absoluteString]
    }
}

