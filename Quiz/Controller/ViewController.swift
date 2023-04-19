//
//  ViewController.swift
//  Quiz
//
//  Created by Varun Kumar on 06/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var progressBar: UIProgressView!
    
    @IBOutlet var choice1: UIButton!
    @IBOutlet var choice2: UIButton!
    @IBOutlet var choice3: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        upDateUi()
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        
        let buttonName = sender.currentTitle ?? "No Input"
        
        print(buttonName)
        
        let userGotItRight =  quizBrain.answerCheck(buttonName)
        print(" gwgeyg \(userGotItRight)")
        
        if userGotItRight {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(upDateUi), userInfo: nil, repeats: false)
    }
    
    
    
    @objc func upDateUi() {
        questionLabel.text = quizBrain.getQuestionText()
        
        let answerChoices = quizBrain.answerChoices()
        choice1.setTitle(answerChoices[0], for: .normal)
        choice2.setTitle(answerChoices[1], for: .normal)
        choice3.setTitle(answerChoices[2], for: .normal)
        
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
      
        choice1.backgroundColor = .clear
        choice2.backgroundColor = .clear
        choice3 .backgroundColor = .clear
       
    }
    
}

