//
//  Created by Tom Baranes on 14/07/16.
//  Copyright © 2016 Tom Baranes. All rights reserved.
//

import Foundation
import XCTest
import SwiftyUtils

class UnitTestTests: XCTestCase {

    func testIsRunning() {
        XCTAssertFalse(UnitTesting.isRunning)
    }

    func testMeasure() {
        let timing = UnitTesting.measure {
            for _ in [0...1000] { }
        }
        XCTAssertTrue(timing > 0)
        XCTAssertTrue(timing < 1)
    }
}
