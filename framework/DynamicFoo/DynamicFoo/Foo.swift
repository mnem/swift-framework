//
//  Foo.swift
//  DynamicFoo
//
//  Created by David Wagner on 26/04/2018.
//  Copyright © 2018 David Wagner. All rights reserved.
//

import Foundation

@objc
public final class Foo: NSObject {
    private static var nextID:UInt = 0
    public let ID:UInt

    public override init() {
        ID = Foo.nextID
        Foo.nextID += 1
    }

    @objc
    public static func describeState() -> String {
        return "Class Foo: \(String(describing:self)), nextID: \(Foo.nextID)"
    }
}

