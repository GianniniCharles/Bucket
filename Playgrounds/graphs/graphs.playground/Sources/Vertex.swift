import Foundation

//Two locations in a graph
public struct Vertex<T> {
    public let index: Int
    public let data: T
}

extension Vertex: Hashable where T: Hashable {}
extension Vertex: Equatable where T: Equatable {
    public static func == (lhs: Vertex<T>, rhs: Vertex<T>) -> Bool {
            return lhs.index == rhs.index
    }
}

extension Vertex: CustomStringConvertible {
    
    public var description: String {
        return "\(index): \(data)"
    }
}
