import Foundation

public enum EdgeType {
    case directed
    case undirected
}

public protocol Graph {
    associatedtype Element
    func createVertex(data: Element) -> Vertex<Element>
    func addDirectedEdge(from source: Vertex<Element>,
    to destination: Vertex<Element>, weight: Double?)
    func addUndirectedEdge(between source: Vertex<Element>, and destination: Vertex<Element>, weight: Double?)
    func add(_ edge: EdgeType, from source: Vertex<Element>, to destination: Vertex<Element>, weight: Double?)
    func edges(from source: Vertex<Element>) -> [Edge<Element>]
    func weight(from source: Vertex<Element>,to destination: Vertex<Element>) -> Double?
    func numberOfDirectedEdges(between source: Vertex<Element>, and destination: Vertex<Element>) -> Int
}

extension Graph {
    public func addUndirectedEdge(between source: Vertex<Element>,and destination: Vertex<Element>, weight: Double?) {
    addDirectedEdge(from: source, to: destination, weight: weight)
    addDirectedEdge(from: destination, to: source, weight: weight)
    }
    
    public func add(_ edge: EdgeType, from source: Vertex<Element>,to destination: Vertex<Element>, weight: Double?) {
        switch edge {
        case .directed:
            addDirectedEdge(from: source, to: destination, weight: weight)
        case .undirected:
            addUndirectedEdge(between: source, and: destination, weight: weight)
        }
    }
    
    public func numberOfDirectedEdges(between source: Vertex<Element>, and destination: Vertex<Element>) -> Int {
            var numOfDirectedEdges = 0
            
        
            let destinationEdges = edges(from: destination)
        for edge in edges(from: source) {
            if edge.source == source && edge.destination == destination {
                numOfDirectedEdges += 1
            }
        }
        
        for edge in edges(from: destination) {
                 if edge.source == destination && edge.destination == source {
                     numOfDirectedEdges += 1
                 }
             }
            return numOfDirectedEdges
       }
}
