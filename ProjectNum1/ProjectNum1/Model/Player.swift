//
//  Player.swift
//  ProjectNum1
//
//  Created by Нұржан Дауленканов on 6/8/19.
//  Copyright © 2019 Нұржан Дауленканов. All rights reserved.
//

import Foundation
class Player {
    var username: String = ""
    var score: Int = 0
    
    init(username: String, score: Int){
        self.username = username
        self.score = score
    }
}
