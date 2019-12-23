import Foundation

public struct HashTable<Key: Hashable, Value> {
  //elements will be keyValue pairs
  private typealias Element = (key: Key, value: Value)
    
  //a bucket represents an index in the hashtable. each bucket has an array of elements
  private typealias Bucket = [Element]
    
  //the main array is an array of buckets.
  private var buckets: [Bucket]

  private(set) public var count = 0
    
  public var isEmpty: Bool {
    return count == 0
  }

  public init(capacity: Int) {
    assert(capacity > 0)
    buckets = Array<Bucket>(repeating: [], count: capacity)
  }
    
    //get the index of the bucket containing the value.
    private func index(for key: Key) -> Int {
      return abs(key.hashValue) % buckets.count
    }
    
    // hashtable["whateverYourKeyIs"]
    public subscript(key: Key) -> Value? {
      get {
        return value(for: key)
      }
        
    set {
       if let value = newValue {
         update(value: value, for: key)
       } else {
         removeValue(for: key)
       }
     }
        
    }
    
    @discardableResult
    public mutating func update(value: Value, for key: Key) -> Value? {
      let index = self.index(for: key)
      
      // 1
      if let (i, element) = buckets[index].enumerated().first(where: { $0.1.key == key }) {
        let oldValue = element.value
        buckets[index][i].value = value
        return oldValue
      }

      // 2
      buckets[index].append((key: key, value: value))
      count += 1
      return nil
    }
    
    @discardableResult
    public mutating func removeValue(for key: Key) -> Value? {
      let index = self.index(for: key)
      
      // 1
      if let (i, element) = buckets[index].enumerated().first(where: { $0.1.key == key }) {
        buckets[index].remove(at: i)
        count -= 1
        return element.value
      }

      // 2
      return nil
    }

    // this uses chaining and goes through the bucket finding the key. Right now uses array, later on may be better with linkedlist
    public func value(for key: Key) -> Value? {
      let index = self.index(for: key)
      return buckets[index].first { $0.key == key }?.value
    }
    
 
}
