//
//  ViewController.swift
//  RPS
//
//  Created by Mitchell R. Berg on 2/12/18.
//  Copyright © 2018 Mitchell R. Berg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var scissorspng: UIImageView!
    @IBOutlet weak var paperpng: UIImageView!
    @IBOutlet weak var rockpng: UIImageView!
    @IBOutlet weak var computerimage: UIImageView!
    @IBOutlet weak var youimage: UIImageView!
    @IBOutlet weak var wlbl: UILabel!
    @IBOutlet weak var testlbl: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var titlelbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       testlbl.text = ""
    }
    var test = Int(arc4random_uniform(2))
    func random() {
        testlbl.text = String(Int(arc4random_uniform(2)))
    }
    func reset() {
        wlbl.text = ""
        youimage.image = nil
        computerimage.image = nil
        random()
    }
    
    @IBAction func ScissorsSelected(_ sender: UIButton) {
        if scissorsButton.isEnabled == true{
        youimage.image = #imageLiteral(resourceName: "scissors")
        if testlbl.text == "0" {
                computerimage.image = #imageLiteral(resourceName: "rock")
                wlbl.text = "You lost!"
            }else{
                computerimage.image = #imageLiteral(resourceName: "paper")
                wlbl.text = "You won!"
            }
        }
    }
    @IBAction func PaperSelected(_ sender: UIButton) {
        if paperButton.isEnabled == true {
        youimage.image = #imageLiteral(resourceName: "paper")
            if testlbl.text == "0" {
                computerimage.image = #imageLiteral(resourceName: "scissors")
                wlbl.text = "You lost!"
            }else{
                computerimage.image = #imageLiteral(resourceName: "rock")
                wlbl.text = "You won!"
            }
        }
    }
    @IBAction func RockSelected(_ sender: UIButton) {
        if rockButton.isEnabled == true {
        youimage.image = #imageLiteral(resourceName: "rock")
            if testlbl.text == "0" {
                computerimage.image = #imageLiteral(resourceName: "paper")
                wlbl.text = "You lost!"
            }else{
                computerimage.image = #imageLiteral(resourceName: "scissors")
                wlbl.text = "You won!"
            }
        }
    }
    @IBAction func resetButton(_ sender: UIButton) {
        if resetButton.isEnabled == true {
            testlbl.text = nil
            reset()
        }
    }
    
    
}

