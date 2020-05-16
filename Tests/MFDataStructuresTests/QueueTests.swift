import XCTest
@testable import MFDataStructures

final class QueueTests: XCTestCase {
  
  func testEnqueueAndDequeueSingleItem() {
    let testQueue = Queue<Int>()
    testQueue.enqueue(1)
    
    let dequeuedItem = testQueue.dequeue()
    XCTAssertEqual(dequeuedItem, 1)
  }
  
  func testEnqueueSeveralItemsAndDequeueFirst() {
    let testQueue = Queue<Int>()
    testQueue.enqueue(1)
    testQueue.enqueue(2)
    testQueue.enqueue(3)
    testQueue.enqueue(4)
    
    let dequeuedItem1 = testQueue.dequeue()
    XCTAssertEqual(dequeuedItem1, 1)
    
    _ = testQueue.dequeue()
    let dequeuedItem3 = testQueue.dequeue()
    XCTAssertEqual(dequeuedItem3, 3)
    
    _ = testQueue.dequeue()
    let dequeuedItem5 = testQueue.dequeue()
    XCTAssertEqual(dequeuedItem5, nil)
  }
  
}
