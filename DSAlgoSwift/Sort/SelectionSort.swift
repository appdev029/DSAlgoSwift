//
//  SelectionSort.swift
//  DSAlgoSwift
//
//  Created by Rai on 8/11/20.
//  Copyright © 2020 Rakesh. All rights reserved.
//

import Foundation

extension Array where Element : Comparable {
  mutating func selectionSort(_ order: (Element, Element) -> Bool) -> Array {
    // Make sure we don't have just 1 item
    guard self.count > 1 else { return self }
    
    for i in 0..<self.count {
        var minIndex = i
        for j in i+1..<self.count {
            if order(self[j], self[minIndex]) {
                minIndex = j
            }
        }
        let temp = self[i]
        self[i] = self[minIndex]
        self[minIndex] = temp
    }

    return self
  }
}
