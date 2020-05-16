/**
    Node gets initialzied with an assciated value.

    - Parameters:
      - value: The value that the NodeObject holds
*/

final public class Node<T> {
  /// The value that the NodeObject holds
  public let value: T
  
  /// A pointer to the next NodeObject
  public var next: Node?
  
  public init(value: T) {
    self.value = value
  }
}
