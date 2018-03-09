//
//  EmojiViewController.swift
//  EmojiThing
//
//  Created by Mitchell R. Berg on 2/22/18.
//  Copyright © 2018 Mitchell R. Berg. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }}
    class Emoji{
        var name: String
        var symbol: String
        var description: String
        var usage: String
        
        init(symbol: String, name: String, description: String, usage: String){
            self.symbol = symbol
            self.name = name
            self.description = description
            self.usage = usage
        }
}
