//
//  BinarySearchTestCase.swift
//  SwiftDSAlgoTests
//
//  Created by Rai on 8/4/20.
//  Copyright © 2020 Rakesh. All rights reserved.
//

import XCTest

@testable import DSAlgoSwift

class BinarySearchTestCase: XCTestCase {
    
    override func setUpWithError() throws {
        
    }
    
    
    func test_binarySearch() {
        let array = [200, 300 , 350, 450, 475, 525, 560]
        XCTAssertEqual(array.binarySearch(for: 475, in: nil),4)
    }
    
}
