//
//  LinkedList.swift
//  SwiftDSAlgo
//
//  Created by Rai on 8/5/20.
//  Copyright © 2020 Rakesh. All rights reserved.
//

import Foundation

class Node<T> {
    var value:T
    var next: Node?
    weak var previous: Node?
    
    init(value:T) {
        self.value = T.self as! T
    }
}

class LinkedList<T> {
    
    var head: Node<T>?
    
    var isEmpty: Bool {
      return head == nil
    }
    
    var first: Node<T>? {
      return head
    }
    
    var last: Node<T>? {
      guard var node = head else {
        return nil
      }
    
      while let next = node.next {
        node = next
      }
      return node
    }
    
    var count: Int {
      guard var node = head else {
        return 0
      }
    
      var count = 1
      while let next = node.next {
        node = next
        count += 1
      }
      return count
    }

    func append(value:T) {
        let node = Node(value: value)
        if isEmpty {
            head = node
        } else if let last = self.last {
            last.next = node
            node.previous = last
        }
    }
    
    var print: String {
        var s = "["
        var node = head
        
        while node != nil {
            if let node = node { s += "\(node.value)" }
            node = node?.next
            if let _ = node { s += " ," }
        }
        return s
    }
    
    subscript(index: Int) -> Node<T> {
        get {
            if index == 0 {
                return head!
            }
            var counter = 1
            var node = head?.next
            while counter < index {
                node = head?.next
                counter = counter + 1
            }
            return node!
        }
        
        set {
            if index == 0 {
                let next = head
                head = newValue
                head?.next = next
                return
            }
            var counter = 0
            var node = head?.next
            while counter < index {
                node = head?.next
                counter = counter + 1
            }
            node?.next = newValue
        }
    }
    
    func removeNode(_ node: Node<T>) {
        let previousNode = node.previous
        let nextNode = node.next
        nextNode?.previous = previousNode
        previousNode?.next = nextNode
        if previousNode == nil {
            head = nextNode
        }
        node.previous = nil
        node.next = nil
        
    }
    
    @discardableResult
    public func removeAt(_ index: Int) ->  Node<T>? {
        let nodeToRemove = self[index]
        removeNode(nodeToRemove)
        return nodeToRemove
    }
    
    public func removeAll() {
      head = nil
    }
}
