//
//  InsertionSortTestCase.swift
//  SwiftDSAlgoTests
//
//  Created by Rai on 8/4/20.
//  Copyright © 2020 Rakesh. All rights reserved.
//

import XCTest

@testable import DSAlgoSwift

class InsertionSortTestCase: XCTestCase {
    
    override func setUpWithError() throws {
        
    }
    
    
    func test_insertionSort() {
        var array = [475, 525, 200, 300, 350, 450, 560]
        array = array.insertionSort { (a, b) -> Bool in
            return a > b
        }
        XCTAssertEqual(array,[200, 300, 350, 450,475, 525, 560])
    }
    
}
