//
//  QuizBrain.swift
//  Quiz
//
//  Created by Varun Kumar on 10/04/23.
//

import Foundation

struct QuizBrain {
    
    var questionArray  = [
        
//        QuestionText(q: "A slug's blood is green.", a: "True"),
//        QuestionText(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
//        QuestionText(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
//        QuestionText(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
//        QuestionText(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
//        QuestionText(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
//        QuestionText(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
//        QuestionText(q: "Google was originally called 'Backrub'.", a: "True"),
//        QuestionText(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
//        QuestionText(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
//        QuestionText(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
//        QuestionText(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True"),
        
        QuestionText(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        QuestionText(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        QuestionText(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        QuestionText(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        QuestionText(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        QuestionText(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        QuestionText(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        QuestionText(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        QuestionText(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        QuestionText(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
        
    ]
    
    var questionNumber = 0
    var myScore = 0
    
    // here underscore is a external pointer and userAnswer is a internal pointer
    mutating func answerCheck(_ userAnswer : String) -> Bool {
        if userAnswer == questionArray[questionNumber].chossedAnswer {
            myScore += 1
            return true
        } else{
            return false
        }
    }
    

    func answerChoices() -> [String] {
        return questionArray[questionNumber].answerText
    }
    
    func getQuestionText() -> String {
        return questionArray[questionNumber].questionText
        
    }
    
    func getProgress() -> Float {
        let progress =  Float(questionNumber + 1 ) / Float (questionArray.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < questionArray.count {
            questionNumber += 1
        }else {
            questionNumber = 0
            myScore = 0
        }
    }
    
    mutating func getScore() -> Int  {
        return myScore
    }
    
}
