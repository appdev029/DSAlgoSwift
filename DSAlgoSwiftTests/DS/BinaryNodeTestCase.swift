//
//  BinaryNodeTestCase.swift
//  SwiftDSAlgoTests
//
//  Created by Rai on 8/3/20.
//  Copyright © 2020 Rakesh. All rights reserved.
//

import XCTest

@testable import DSAlgoSwift

class BinaryNodeTestCase: XCTestCase {
    
    var tree: BinaryNode<Int>!
    
    override func setUp() {
        let node1 = BinaryNode(value: 1)
        let node2 = BinaryNode(value: 2)
        let node3 = BinaryNode(value: 3)
        node3.leftNode = node1
        node3.rightNode = node2
        
        let node4 = BinaryNode(value: 4)
        let node5 = BinaryNode(value: 5)
        let node6 = BinaryNode(value: 6)
        node6.leftNode = node4
        node6.rightNode = node5
        
        let node7 = BinaryNode(value: 7)
        node7.leftNode = node3
        node7.rightNode = node6
        
        tree = node7
    }
    
    func test_traverseInOrder() {
        var testArray: [Int] = []
        tree.traverseInOrder{ testArray.append($0) }
        XCTAssertEqual(testArray, [1,3,2,7,4,6,5])
    }
    
    func test_traversePreOrder() {
        var testArray: [Int] = []
        tree.traversePreOrder{ testArray.append($0) }
        XCTAssertEqual(testArray, [7,3,1,2,6,4,5])
    }

    func test_traversePostOrder() {
        var testArray: [Int] = []
        tree.traversePostOrder{ testArray.append($0) }
        XCTAssertEqual(testArray, [1,2,3,4,5,6,7])
    }

    
}
