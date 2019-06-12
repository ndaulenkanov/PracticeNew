//
//  ScoreBoardTableViewCell.swift
//  ProjectNum1
//
//  Created by Нұржан Дауленканов on 6/8/19.
//  Copyright © 2019 Нұржан Дауленканов. All rights reserved.
//

import UIKit

class ScoreBoardTableViewCell: UITableViewCell {

    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setScoreBoardCell(username: String, score: String) {
        scoreLabel.text = score
        usernameLabel.text = username
    }

}
