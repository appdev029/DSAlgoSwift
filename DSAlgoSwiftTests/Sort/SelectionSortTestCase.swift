//
//  SelectionSortTestCase.swift
//  DSAlgoSwiftTests
//
//  Created by Rai on 8/11/20.
//  Copyright © 2020 Rakesh. All rights reserved.
//

import XCTest

@testable import DSAlgoSwift

class SelectionSortTestCase: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
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
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func test_selectionSort() {
        var array = [475, 525, 200, 300, 350, 450, 560]
        array = array.selectionSort { (a, b) -> Bool in
            return a > b
        }
        XCTAssertEqual(array,[200, 300, 350, 450,475, 525, 560])
    }

}
