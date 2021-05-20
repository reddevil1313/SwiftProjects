//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPresssed(_ sender: UIButton) {
        
        let userAns = sender.currentTitle!
        let userBool = quizBrain.checkAnswer(userAns)
        
        if userBool {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.incQuesNum()
                
        Timer.scheduledTimer(timeInterval: 0.2, target:self, selector:
                                #selector(updateUI), userInfo:nil, repeats: false)

    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getText()
        firstButton.setTitle(quizBrain.getLabel(0), for: .normal)
        secondButton.setTitle(quizBrain.getLabel(1), for: .normal)
        thirdButton.setTitle(quizBrain.getLabel(2), for: .normal)
        firstButton.backgroundColor = UIColor.clear
        secondButton.backgroundColor = UIColor.clear
        thirdButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
    }
}

