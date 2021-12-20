//
//  InsertionSort.swift
//  SwiftDSAlgo
//
//  Created by Rai on 8/4/20.
//  Copyright © 2020 Rakesh. All rights reserved.
//

import Foundation

extension Array where Element : Comparable {
  mutating func insertionSort(_ order: (Element, Element) -> Bool) -> Array {
    // Make sure we don't have just 1 item
    guard self.count > 1 else { return self }
    
    for i in 1..<self.count {
        let temp = self[i]
        var j = i
        while j > 0 && order(self[j-1], temp) 	{
            self[j] = self[j-1]
            j -= 1
        }
        self[j] = temp
    }

    return self
  }
}
