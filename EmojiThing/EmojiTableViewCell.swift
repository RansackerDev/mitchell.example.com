//
//  EmojiTableViewCell.swift
//  EmojiThing
//
//  Created by Mitchell R. Berg on 3/8/18.
//  Copyright © 2018 Mitchell R. Berg. All rights reserved.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
@IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func update(with emoji: Emoji) {
        emojiLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
