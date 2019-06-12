//
//  Question.swift
//  ProjectNum1
//
//  Created by Нұржан Дауленканов on 6/7/19.
//  Copyright © 2019 Нұржан Дауленканов. All rights reserved.
//

import Foundation
class Question {
    var questionTitle: String = " "
    var button1Text: String
    var button2Text: String
    var button3Text: String
    var button4Text: String
    var rightAnswer: String
    init(questionTitle: String, button1Text: String, button2Text: String, button3Text: String, button4Text: String, rightAnswer: String){
        self.button1Text = button1Text
        self.button2Text = button2Text
        self.button3Text = button3Text
        self.button4Text = button4Text
        self.questionTitle = questionTitle
        self.rightAnswer = rightAnswer
    }
}
