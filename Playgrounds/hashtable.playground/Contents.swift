import Foundation


var hashTable = HashTable<String, Bool>(capacity: 5)
hashTable["firstName"] = "Steve"
hashTable["lastName"] = "Losner"


if let firstName = hashTable["firstName"] {
  print(firstName)
}

if let lastName = hashTable["lastName"] {
  print(lastName)
} else {
  print("lastName key not in hash table")
}
