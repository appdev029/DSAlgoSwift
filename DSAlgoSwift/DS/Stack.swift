//
//  Stack.swift
//  SwiftDSAlgo
//
//  Created by Rai on 8/3/20.
//  Copyright © 2020 Rakesh. All rights reserved.
//

import Foundation

struct Stack<Element: Equatable>: Equatable{
    
    subscript(index: Int) -> Element {
        
        get {
            return self.storage[index]
        }
        set {
             self.storage[index] = newValue
        }
    }
    //Storage
    private var storage: [Element] = []
    
    init() {}
    
    init(_ elements: [Element]) {
        storage = elements
    }
    
    //Peek
    func peek() -> Element? {
        return storage.last
    }
    
    func isEmpty() -> Bool {
        return self.storage.isEmpty
    }
    
    //Push
    mutating func push(_ element: Element) {
        return storage.append(element)
    }
    
    //Pop
    @discardableResult
    mutating func pop() -> Element? {
        self.storage.popLast()
    }
    
}

extension Stack {
    var description: String {
        return storage
            .map { "\($0)"}
        .joined(separator: " ")
    }
}

extension Stack: ExpressibleByArrayLiteral {
    
    init(arrayLiteral elements: Element...) {
        storage = elements
    }
    
}
