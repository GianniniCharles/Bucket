import Foundation

//Quick example of an Optional

class ExampleClass {
  var noneString: String?
  var someString: String? = "I am not nil"


    init() {
        optionalBindingExample(someString)
        optionalBindingExample(noneString)
        guardStatementExample(someString)
        guardStatementExample(noneString)
        explicitOptionalUnwrappingExample(someString)
        explicitOptionalUnwrappingExample(noneString)
    }
    
//Optional Binding

  func optionalBindingExample(_ testStr: String?) {
    print("==============Example of Optional Binding ================\n")
    if let unwrappedString = testStr {
       print("This string's not nil! It says \(unwrappedString)")
     } else {
       print("This string is nil, I can't use it")
     }
      print("\n=======================================================\n")
  }


//Guard Statement

  func guardStatementExample(_ testStr: String?) {
    print("==============Example of Guard Statement ===============\n")

     guard let safeString = testStr else {
       print("This string is nil, aborting.")
       return
     }
     print("Hooray there is some value! It says \(safeString)")
    print("\n=======================================================\n")

   }


// Force Unwrapping !!!!

 func explicitOptionalUnwrappingExample(_ testStr: String?) {
    print("==============Example of Explicit Optional Unwrapping ================\n")

    print("This app will crash if \(testStr!) is nil, so I'd better make sure it will never be nil!!!!")
    print("\n=======================================================\n")

 }
    
}

let demo = ExampleClass()



