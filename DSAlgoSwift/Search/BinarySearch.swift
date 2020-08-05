//
//  BinarySearch.swift
//  SwiftDSAlgo
//
//  Created by Rai on 8/3/20.
//  Copyright © 2020 Rakesh. All rights reserved.
//

import Foundation

extension RandomAccessCollection where Element: Comparable {
    func binarySearch(for value: Element, in range: Range<Index>? = nil) -> Index? {
        let range = range ?? startIndex..<endIndex
        guard range.lowerBound < range.upperBound else {
            return nil
        }
        let size = distance(from: range.lowerBound, to: range.upperBound)
        let mid = index(range.lowerBound, offsetBy:size/2)
        let midValue = self[mid]
        if midValue == value {
            return mid
        } else if midValue > value {
            return binarySearch(for: value, in:range.lowerBound..<mid)
        } else {
            return binarySearch(for: value, in: index(after:mid)..<range.upperBound)
        }
        
    }
}
