//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Samay Sagar on 20/5/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]

    
    var quesNum = 0
    var points = 0
    
    mutating func checkAnswer(_ userAns: String) -> Bool {
        let actualQues = quiz[quesNum]
        let actualAns = actualQues.correct
        
        if userAns == actualAns {
            points += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func incQuesNum() {
        if quesNum + 1 < quiz.count {
            quesNum += 1
        } else {
            points = 0
            quesNum = 0
        }
    }
    
    func getText() -> String {
        return quiz[quesNum].text
    }
    
    func getProgress() -> Float {
        return Float(quesNum + 1)/Float(quiz.count)
    }
    
    func getScore() -> Int {
        return points
    }
    
    func getLabel(_ num: Int) -> String {
        return quiz[quesNum].ans[num]
    }
    
}
