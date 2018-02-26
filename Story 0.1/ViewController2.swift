//
//  ViewController2.swift
//  Story 0.1
//
//  Created by Mitchell R. Berg on 1/25/18.
//  Copyright © 2018 Mitchell R. Berg. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var UISwitch1: UISwitch!
    @IBOutlet weak var UISwitch2: UISwitch!
    @IBOutlet weak var UISwitch3: UISwitch!
    @IBOutlet weak var UISwitch4: UISwitch!
    @IBOutlet weak var UISwitch5: UISwitch!
    @IBOutlet weak var UISwitch6: UISwitch!
    
    @IBOutlet weak var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func Button1(_ sender: UIButton) {
        if button1.isEnabled == true{
            usleep(3000000)
            UISwitch6.isEnabled = false
            UISwitch2.isEnabled = false
            label1.text = "Oh! Thats not good at all! Try thinging outside of the switches!"
        }
    }
    @IBAction func button2(_ sender: UIButton) {
        if button2.isEnabled == true {
            usleep(2000000)
            button3.backgroundColor = UIColor.cyan
        }
    }
    @IBAction func uISwitch1(_ sender: UISwitch) {
        if (sender.isOn == true){
           view.backgroundColor = UIColor.cyan
        }else{
            view.backgroundColor = UIColor.darkGray
        }
    }
    @IBAction func uISwitch3(_ sender: UISwitch) {
        if (sender.isOn == true) {
            
        }
    }
    @IBAction func uISwitch4(_ sender: UISwitch) {
        if (sender.isOn == true) {
            view.backgroundColor = UIColor.black
        }else{
            view.backgroundColor = UIColor.darkGray
        }
    }
    
   

}
