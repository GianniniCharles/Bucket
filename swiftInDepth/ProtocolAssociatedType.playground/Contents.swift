import Foundation

var str = "Hello, playground"


protocol Worker {
    @discardableResult
    func start(input: Input) -> Output
}

protocol Input {}
protocol Output {}


class MailJob: Worker {
    func start(input: Input) -> Output {
        //send mail to emailAddress. input can be email
        // return if successed.
        let output: Output
        return output
    }
}

class FileRemover: Worker {
    
    func start(input: Input) -> Output {
        let output: Output
        return output
        //bad, not scalable.
    }
    // input is url
    // outpul is [string]
}

