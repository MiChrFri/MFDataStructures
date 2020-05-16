/**
     Queue datastructure store and retrieve in FIFO order
     
     - How to use:
      - Need to be initialized with a type which will be used during lifetime.
      
     Example usage of an instance `queue` :
        queue.enqueue(42)
        queue.enqueue(33)
        let first = queue.dequeue()
        // first -> 42
*/

final public class Queue<T> {
  private var head: Node<T>?
  private var tail: Node<T>?
  
  func enqueue(_ value: T) {
    let node = Node(value: value)
    if head == nil {
      head = node
      tail = node
      head?.next = tail
    } else {
      tail?.next = node
      tail = tail?.next
    }
  }

  func dequeue() -> T? {
    guard let node = head else { return nil }
    head = head?.next
    return node.value
  }
  
}

