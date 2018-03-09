//
//  ViewController.swift
//  Quiz-Me
//
//  Created by NomNomNam on 2/27/18.
//  Copyright © 2018 NamHNguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    let allQuestions = QuestionBank()
    var score : Int = 0
    var questionNumber : Int = 0
    var pickedAnswer : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestions.scienceQuestionList[0]
        questionLabel.text = firstQuestion.questionText
        updateUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        questionNumber += 1
        nextQuestion()
        updateUI()
    }
    
    // method to update all the screen UI including progressBar, progressLabel, scoreLabel and questionLabel
    func updateUI() {
        scoreLabel.text = "Score: " + String(score)
        progressLabel.text = String(questionNumber) + "/20"
        progressBar.frame.size.width = (view.frame.size.width / 20) * CGFloat(questionNumber)
    }
    
    // method to update the next question
    func nextQuestion() {
        if questionNumber <= 19 {
            questionLabel.text = allQuestions.scienceQuestionList[questionNumber].questionText
        }
        else {
            let alert = UIAlertController(title: "Awesome!", message: "You have finished all the questions. Would you like to start over?", preferredStyle: .alert)
            let restartQuestionsAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.resetQuestion()
            })
            
            alert.addAction(restartQuestionsAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    // method to check answer for correctness
    func checkAnswer() {
        let correctAnswer = allQuestions.scienceQuestionList[questionNumber].answer
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("CORRECT!")
            score += 1
        }
        else {
            ProgressHUD.showError("WRONG!")
        }
    }
    
    // method to reset question
    func resetQuestion() {
        questionNumber = 0
        score = 0
        updateUI()
    }
}

