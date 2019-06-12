//
//  ViewController.swift
//  ProjectNum1
//
//  Created by Нұржан Дауленканов on 6/7/19.
//  Copyright © 2019 Нұржан Дауленканов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    
    @IBOutlet weak var questionTitle: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var questionNum: UILabel!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    var questions = QuestionList()
    var questionNumber: Int = 1
    var score: Int = 0
    var wrong: Int = 0
     @IBOutlet weak var scoreTable: UILabel!
    @IBOutlet weak var wrongTable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreTable.text = String(score)
        wrongTable.text = String(wrong)
        questionNum.text = String(questionNumber)
        
        print(questions.questions)
        button1.setTitle(questions.questions[0].button1Text, for: .normal)
        button2.setTitle(questions.questions[0].button2Text, for: .normal)
        button3.setTitle(questions.questions[0].button3Text, for: .normal)
        button4.setTitle(questions.questions[0].button4Text, for: .normal)
        questionTitle.text = questions.questions[0].questionTitle
        
    }
   
    
    
   
    func updateButtonInteraction() {
        button1.isUserInteractionEnabled = false
        button2.isUserInteractionEnabled = false
        button3.isUserInteractionEnabled = false
        button4.isUserInteractionEnabled = false
    }
    func updateStateButton(button: UIButton, color: UIColor, enabled: Bool) {
        button.backgroundColor = color
        button.isUserInteractionEnabled = enabled
    }
    
    func updateAllButtons() {
        updateStateButton(button: button1, color: .blue, enabled: true)
        updateStateButton(button: button2, color: .blue, enabled: true)
        updateStateButton(button: button3, color: .blue, enabled: true)
        updateStateButton(button: button4, color: .blue, enabled: true)
    }
    
    @IBAction func button1Action(_ sender: Any) {
        if questions.questions[questionNumber].button1Text == questions.questions[questionNumber].rightAnswer {
            button1.backgroundColor = .green
            updateButtonInteraction()
            score += 1
            scoreTable.text = String(score)
            
        }
        else {
            button1.backgroundColor = .red
            updateButtonInteraction()
            wrong += 1
            wrongTable.text = String(wrong)
        }
        questionNumber += 1
        questionNum.text = String(questionNumber)
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
        
    }
    
    @IBAction func button2Action(_ sender: Any) {
        if questions.questions[questionNumber].button2Text == questions.questions[questionNumber].rightAnswer {
            button2.backgroundColor = .green
            updateButtonInteraction()
            score += 1
            scoreTable.text = String(score)
        }
        else {
            button2.backgroundColor = .red
            updateButtonInteraction()
            wrong += 1
            wrongTable.text = String(wrong)
        }
        questionNumber += 1
        questionNum.text = String(questionNumber)
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    
    @IBAction func button3Action(_ sender: Any) {
        if questions.questions[questionNumber].button3Text == questions.questions[questionNumber].rightAnswer {
            button3.backgroundColor = .green
            updateButtonInteraction()
            score += 1
            scoreTable.text = String(score)
        }
        else {
            button3.backgroundColor = .red
            updateButtonInteraction()
            wrong += 1
            wrongTable.text = String(wrong)
        }
        questionNumber += 1
        questionNum.text = String(questionNumber)
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    @IBAction func button4Action(_ sender: Any) {
        if questions.questions[questionNumber].button4Text == questions.questions[questionNumber].rightAnswer {
            button4.backgroundColor = .green
            updateButtonInteraction()
            score += 1
            scoreTable.text = String(score)
        }
        else {
            button4.backgroundColor = .red
            updateButtonInteraction()
            wrong += 1
            wrongTable.text = String(wrong)
        }
        questionNumber += 1
        questionNum.text = String(questionNumber)
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    @objc func updateQuestion() {
        if questionNumber <= questions.questions.count - 1 {
            button1.setTitle(questions.questions[questionNumber].button1Text, for: .normal)
            button2.setTitle(questions.questions[questionNumber].button2Text, for: .normal)
            button3.setTitle(questions.questions[questionNumber].button3Text, for: .normal)
            button4.setTitle(questions.questions[questionNumber].button4Text, for: .normal)
            questionTitle.text = questions.questions[questionNumber].questionTitle
        }
        else {
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "scoreBoardViewController") as! ScoreBoardViewController
            self.present(controller, animated: true)
            
        }
        
        updateAllButtons()
    }
    
    
}

