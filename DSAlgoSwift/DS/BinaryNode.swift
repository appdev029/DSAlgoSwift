//
//  BinaryNode.swift
//  SwiftDSAlgo
//
//  Created by Rai on 8/3/20.
//  Copyright © 2020 Rakesh. All rights reserved.
//

import Foundation

class BinaryNode<Element> {
    private(set) var value: Element
    var leftNode: BinaryNode?
    var rightNode: BinaryNode?
    
    init(value:Element) {
        self.value = value
    }
}

extension BinaryNode {
    func traverseInOrder(visit: (Element) -> Void) {
        self.leftNode?.traverseInOrder(visit: visit)
        visit(value)
        self.rightNode?.traverseInOrder(visit: visit)
    }
    
    func traversePreOrder(visit: (Element) -> Void) {
        visit(value)
        leftNode?.traversePreOrder(visit: visit)
        rightNode?.traversePreOrder(visit: visit)
    }
    
    func traversePostOrder(visit: (Element) -> Void) {
        leftNode?.traversePostOrder(visit: visit)
        rightNode?.traversePostOrder(visit: visit)
        visit(value)
    }
}
