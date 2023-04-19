//
//  QuestionText.swift
//  Quiz
//
//  Created by Varun Kumar on 10/04/23.
//

import Foundation


struct QuestionText {
    var questionText : String
    var answerText : [String]
    var  chossedAnswer : String
    
    init(q: String, a: [String], correctAnswer : String) {
        questionText = q
        answerText = a
        chossedAnswer = correctAnswer
    }
    
}
