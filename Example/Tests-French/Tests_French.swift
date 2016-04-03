//
//  Tests_French.swift
//  Tests-French
//
//  Created by Victor Ilyukevich on 3/29/16.
//  Copyright © 2016 Gowalla. All rights reserved.
//

import XCTest
import FormatterKit

class TTTTimeIntervalFormatterTests: XCTestCase {

    var formatter: TTTTimeIntervalFormatter!

    override func setUp() {
        super.setUp()
        formatter = TTTTimeIntervalFormatter()
    }

    // MARK: Tests

    func testIdiomaticDeictic() {
        XCTAssertEqual(formatter.stringForTimeInterval(-100000), "1 day ago")
        formatter.usesIdiomaticDeicticExpressions = true
        XCTAssertEqual(formatter.stringForTimeInterval(-100000), "yesterday")
    }
}