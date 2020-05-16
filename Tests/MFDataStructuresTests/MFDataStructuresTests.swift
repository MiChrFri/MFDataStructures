import XCTest
@testable import MFDataStructures

final class NodeTests: XCTestCase {
  
  func testCreateANodeWithAStingValue() {
    let testNode = Node(value: "hola")
    XCTAssert(testNode.value is String)
  }
  
  func testCreateANodeWithAnIntValue() {
    let testNode = Node(value: 34)
    XCTAssert(testNode.value is Int)
  }
  
}
