//
//  ViewController.swift
//  FooConsumer
//
//  Created by David Wagner on 26/04/2018.
//  Copyright © 2018 David Wagner. All rights reserved.
//

import UIKit
import DynamicFoo

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let _ = Bar()
        updateLabel()
    }

    @IBAction func handleGenerate(_ sender: UIButton) {
        let foo = Foo()
        print("foo.ID = \(foo.ID)")
        updateLabel()
    }
    
    private func updateLabel() {
        label.text = Foo.describeState()
    }
    
}

