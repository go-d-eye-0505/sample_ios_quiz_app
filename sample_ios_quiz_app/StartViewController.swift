//
//  StartViewController.swift
//  sample_ios_quiz_app
//
//  Created by 田中瑚大 on 2019/05/05.
//  Copyright © 2019年 godai.tanaka. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        QuestionDataManager.sharedInstance.loadQuestion()

        // 遷移先画面の呼び出し
        guard let nextViewController = segue.destination as? QuestionViewController else {
            return
        }

        // 問題文の呼び出し
        guard let questionData = QuestionDataManager.sharedInstance.nextQuestion() else {
            return
        }
        
        nextViewController.questionData = questionData
    }

    @IBAction func goToTigle(_ segue: UIStoryboardSegue) { }
}
