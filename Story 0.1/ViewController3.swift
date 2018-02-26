//
//  ViewController3.swift
//  Story 0.1
//
//  Created by Mitchell R. Berg on 1/29/18.
//  Copyright © 2018 Mitchell R. Berg. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button01: UIButton!
    @IBOutlet weak var button02: UIButton!
    @IBOutlet weak var button03: UIButton!
    @IBOutlet weak var final: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        button03.alpha = 0
        button01.alpha = 0
        button02.alpha = 0
        final.alpha = 0
    }

    
    @IBAction func b1(_ sender: UIButton) {
        if button1.isEnabled == true {
            button01.alpha = 1
        }
    }
    @IBAction func b2(_ sender: UIButton) {
        if button2.isEnabled == true {
            button02.alpha = 1
        }
    }
    @IBAction func b8(_ sender: UIButton) {
        if button8.isEnabled == true {
            button03.alpha = 1
        }
    }
    @IBAction func b01(_ sender: UIButton) {
        if button01.isEnabled == true {
            button03.alpha = 0
        }
    }
    @IBAction func b02(_ sender: UIButton) {
        if button02.isEnabled == true {
            button01.alpha = 0
        }
    }
    @IBAction func b03(_ sender: UIButton) {
        if button03.isEnabled == true {
            final.alpha = 1
            button1.alpha = 0
            button2.alpha = 0
            button3.alpha = 0
            button4.alpha = 0
            button5.alpha = 0
            button6.alpha = 0
            button7.alpha = 0
            button8.alpha = 0
            button8.alpha = 0
            button9.alpha = 0
            button01.alpha = 0
            button02.alpha = 0
            button03.alpha = 0
        }
    }
    
}
