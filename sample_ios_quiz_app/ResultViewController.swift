//
//  ResultViewController.swift
//  sample_ios_quiz_app
//
//  Created by 田中瑚大 on 2019/05/05.
//  Copyright © 2019年 godai.tanaka. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var correctPercentLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let questionCount = QuestionDataManager.sharedInstance.questionDataArray.count

        var correctCount: Int = 0
        for questionData in QuestionDataManager.sharedInstance.questionDataArray {
            if questionData.isCorrect() {
                correctCount += 1
            }
        }

        let correctPercent: Float = ( Float(correctCount) / Float(questionCount) ) * 100
        correctPercentLabel.text = String(format: "%.1f", correctPercent) + "%"
    }
}
