//
//  ViewController.swift
//  TTT
//
//  Created by Mitchell R. Berg on 2/15/18.
//  Copyright © 2018 Mitchell R. Berg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var winlbl: UILabel!
    @IBOutlet weak var turnlbl: UILabel!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var lbl6: UILabel!
    @IBOutlet weak var lbl7: UILabel!
    @IBOutlet weak var lbl8: UILabel!
    @IBOutlet weak var lbl9: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var titlelbl: UILabel!
    @IBOutlet weak var randomlbl: UILabel!
    @IBOutlet weak var resetbutton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl1.text = ""
        lbl2.text = ""
        lbl3.text = ""
        lbl4.text = ""
        lbl5.text = ""
        lbl6.text = ""
        lbl7.text = ""
        lbl8.text = ""
        lbl9.text = ""
        randomlbl.text = ""
        titlelbl.text = "Tic Tac Toe"
        winlbl.text = ""
    }
    func complete() {
        if lbl1.text == "X" && lbl2.text == "X"
            && lbl3.text == "X" {
            reset()
            titlelbl.text = "You have Won!"
            winlbl.text = "1"
        }else  if lbl4.text == "X" && lbl5.text == "X"
            && lbl6.text == "X" {
            reset()
            titlelbl.text = "You have Won!"
            winlbl.text = "1"
        }else  if lbl7.text == "X" && lbl8.text == "X"
            && lbl9.text == "X" {
            reset()
            titlelbl.text = "You have Won!"
            winlbl.text = "1"
        } else  if lbl1.text == "X" && lbl5.text == "X"
            && lbl9.text == "X" {
            reset()
            titlelbl.text = "You have Won!"
            winlbl.text = "1"
        } else  if lbl1.text == "X" && lbl4.text == "X"
            && lbl7.text == "X" {
            reset()
            titlelbl.text = "You have Won!"
            winlbl.text = "1"
        } else  if lbl2.text == "X" && lbl5.text == "X"
            && lbl8.text == "X" {
            reset()
            titlelbl.text = "You have Won!"
            winlbl.text = "1"
        } else  if lbl3.text == "X" && lbl6.text == "X"
            && lbl9.text == "X" {
            reset()
            titlelbl.text = "You have Won!"
            winlbl.text = "1"
        }else  if lbl3.text == "X" && lbl5.text == "X"
            && lbl7.text == "X" {
            reset()
            titlelbl.text = "You have Won!"
            winlbl.text = "1"
        }else{
            cpumove()
        }
        
    }
    func reset() {
        lbl1.text = ""
        lbl2.text = ""
        lbl3.text = ""
        lbl4.text = ""
        lbl5.text = ""
        lbl6.text = ""
        lbl7.text = ""
        lbl8.text = ""
        lbl9.text = ""
        randomlbl.text = ""
        titlelbl.text = "Tic Tac Toe"
    }
    func tryagain() {
        
    }
    var randomtext = String(Int(arc4random_uniform(9)))
    func cpumove() {
        randomlbl.text = String(Int(arc4random_uniform(9)))
        if randomlbl.text == "0" {
            cpumove()
        }
        if randomlbl.text == "1" {
            if lbl1.text == "" {
                lbl1.text = "O"
            }else{
                cpumove()
            }
        }
        if randomlbl.text == "2" {
            if lbl2.text == "" {
                lbl2.text = "O"
            }else{
                cpumove()
            }
        }
        if randomlbl.text == "3" {
            if lbl3.text == "" {
                lbl3.text = "O"
            }else{
                cpumove()
            }
        }
        if randomlbl.text == "4" {
            if lbl4.text == "" {
                lbl4.text = "O"
            }else{
                cpumove()
            }
        }
        if randomlbl.text == "5" {
            if lbl5.text == "" {
                lbl5.text = "O"
            }else{
                cpumove()
            }
        }
        if randomlbl.text == "6" {
            if lbl6.text == "" {
                lbl6.text = "O"
            }else{
                cpumove()
            }
        }
        if randomlbl.text == "7" {
            if lbl7.text == "" {
                lbl7.text = "O"
            }else{
                cpumove()
            }
        }
        if randomlbl.text == "8" {
            if lbl8.text == "" {
                lbl8.text = "O"
            }else{
                cpumove()
            }
        }
        if randomlbl.text == "9" {
            if lbl9.text == "" {
                lbl9.text = "O"
            }else{
                cpumove()
            }
        }
        turnlbl.text = "Your Turn"
    }
    @IBAction func b1(_ sender: UIButton) {
        turnlbl.text = "Computers Turn"
        if button1.isEnabled == true {
            lbl1.text = "X"
            cpumove()
            complete()
        }
    }
    @IBAction func b2(_ sender: UIButton) {
        turnlbl.text = "Computers Turn"
        if button2.isEnabled == true {
            lbl2.text = "X"
            cpumove()
            complete()
        }
    }
    @IBAction func b3(_ sender: UIButton) {
        turnlbl.text = "Computers Turn"
        if button3.isEnabled == true {
            lbl3.text = "X"
            cpumove()
            complete()
        }
    }
    @IBAction func b4(_ sender: UIButton) {
        turnlbl.text = "Computers Turn"
        if button4.isEnabled == true {
            lbl4.text = "X"
            cpumove()
            complete()
        }
    }
    @IBAction func b5(_ sender: UIButton) {
        turnlbl.text = "Computers Turn"
        if button5.isEnabled == true {
            lbl5.text = "X"
            cpumove()
            complete()
        }
    }
    @IBAction func b6(_ sender: UIButton) {
        turnlbl.text = "Computers Turn"
        if button6.isEnabled == true {
            lbl6.text = "X"
            cpumove()
            complete()
        }
    }
    @IBAction func b7(_ sender: UIButton) {
        turnlbl.text = "Computers Turn"
        if button7.isEnabled == true {
            lbl7.text = "X"
            cpumove()
            complete()
        }
    }
    @IBAction func b8(_ sender: UIButton) {
        turnlbl.text = "Computers Turn"
        if button8.isEnabled == true {
            lbl8.text = "X"
            cpumove()
            complete()
        }
    }
    @IBAction func b9(_ sender: UIButton) {
        turnlbl.text = "Computers Turn"
        if button9.isEnabled == true {
            lbl9.text = "X"
            cpumove()
            complete()
        }
    }
    @IBAction func reset(_ sender: UIButton) {
        reset()
    }
    
}

