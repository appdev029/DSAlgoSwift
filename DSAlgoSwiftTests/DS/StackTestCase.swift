//
//  StackTestCase.swift
//  SwiftDSAlgoTests
//
//  Created by Rai on 8/3/20.
//  Copyright © 2020 Rakesh. All rights reserved.
//

import XCTest

@testable import DSAlgoSwift

class StackTestCase: XCTestCase {
    
    var stack = Stack<Int>()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        stack.push(1)
        stack.push(2)
        stack.push(3)
        stack.push(4)
    }
    

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test_push() {
        XCTAssertEqual(stack.description, "1 2 3 4")
    }

    func test_pop() {
        XCTAssertEqual(stack.pop(), 4)
    }
    
    func test_peek() {
        XCTAssertEqual(stack.peek(), 4)
    }

    func test_isEmpty() {
        XCTAssertFalse(stack.isEmpty())
    }
    
    func test_initWithArray() {
        let array = [1,2,3,4]
        XCTAssertEqual(Stack(array),stack)
    }

    func test_arrayLiteral() {
        let stack: Stack = ["Test", "Element"]
        XCTAssertEqual(["Test", "Element"], stack)
    }
}
