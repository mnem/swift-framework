//
//  DynamicFooTests.swift
//  DynamicFooTests
//
//  Created by David Wagner on 26/04/2018.
//  Copyright © 2018 David Wagner. All rights reserved.
//

import XCTest
import DynamicFoo

class DynamicFooTests: XCTestCase {
    
    func testStaticDescription() {
        let subject = Foo()
        let subjectID = subject.ID
    
        XCTAssertEqual(Foo.describeState(), "Class Foo: Foo, nextID: \(subjectID + 1)")
    }

    func testIDIncrements() {
        let subjectA = Foo()
        let subjectB = Foo()

        XCTAssertEqual(subjectB.ID - subjectA.ID, 1)
    }

}
