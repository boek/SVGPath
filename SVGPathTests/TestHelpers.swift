//
//  TestHelpers.swift
//  SVGPath
//
//  Created by Tim Wood on 1/22/15.
//  Copyright (c) 2015 Tim Wood. All rights reserved.
//

import XCTest
import SVGPath

func assertCommandsEqual (a:[SVGCommand], b:[SVGCommand]) {
    XCTAssertEqual(a.count, b.count, "counts should be the same")
    
    for var i = 0; i < a.count; i++ {
        XCTAssertEqual(a[i].type,     b[i].type,     "type should be the same")
        XCTAssertEqual(a[i].point,    b[i].point,    "points should be the same")
        XCTAssertEqual(a[i].control1, b[i].control1, "control point 1 should be the same")
        XCTAssertEqual(a[i].control2, b[i].control2, "control point 2 should be the same")
    }
}