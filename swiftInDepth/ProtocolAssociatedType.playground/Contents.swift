import Foundation

var str = "Hello, playground"


protocol Worker {
    
    @discardableResult
    func start(input: String) -> Bool
    
}


class MailJob: Worker {
    func start(input: String) -> Bool {
        //send mail to emailAddress. input can be email
        // return if successed.
        return true
    }
}

class FileRemover: Worker {
    // input is url
    // outpul is [string]
}

