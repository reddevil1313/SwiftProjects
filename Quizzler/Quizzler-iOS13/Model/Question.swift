//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Samay Sagar on 20/5/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let ans: Array<String>
    let correct: String
    
    init(q: String, a: Array<String>, correctAnswer: String) {
        text = q
        ans = a
        correct = correctAnswer
    }
}
