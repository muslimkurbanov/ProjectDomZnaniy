//
//  TestViewController.swift
//  TestCase2
//
//  Created by Муслим Курбанов on 12.12.2020.
//

import UIKit

class TestMathVC: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    //    @IBOutlet weak var firstAnswer: UIButton!
    //    @IBOutlet weak var secondAnswer: UIButton!
    //    @IBOutlet weak var thirdAnswer: UIButton!
    //    @IBOutlet weak var fourthAnsweer: UIButton!
    
    var index = 0
    var mathScore = 0
    let questionsArray = ["Приведите подобные слагаемые: –4х + 5 + 11х – 8", "Раскройте скобки: –5x(y – 2z + 5).", "Раскройте скобки и приведите подобные слагаемые в выражении (1,3а – 4) – (6 + 2,7a).", "Преобразуйте выражение 2,5(–2х + 4y – z) в тождественно равное.", "Тест завершен"]
    let rightAnswers = ["–15х – 13", "–5xy – 2z + 5", "4a – 2", "5х + 10у – 2,5"]
    
    let firstAnswers = ["–12х + 16", "–15х – 13", "15х – 3", "7х – 3"]
    let secondAnswers = ["y – 2z + 5", "–5ху – 10xz + 25x", "–5xy – 2z + 5", "–5ху + 10xz – 25х"]
    let thirdAnswers = ["–10 – 4a", "–1,4а – 10", "4a – 10", "4a – 2"]
    let fourthAnswers = ["5х + 10у – 2,5", "–5х – 10у + z", "–5х + I0y – 2,5z", "–5х + 10у – 2,5"]
//    let thirdAnswers
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = questionsArray[index]
        for (index, button) in buttons.enumerated() {
            button.setTitle(firstAnswers[index], for: .normal)
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if sender.title(for: .normal) == rightAnswers[index] {
            index += 1
            mathScore += 1
            questionLabel.text = questionsArray[index]
            print("right")
        } else if index <= 3 {
            index += 1
            questionLabel.text = questionsArray[index]
            print("wrong")
        } else {
            return
        }
        
        if index == 1 {
            for (index, button) in buttons.enumerated() {
                button.setTitle(secondAnswers[index], for: .normal)
            }
        } else if index == 2 {
            for (index, button) in buttons.enumerated() {
                button.setTitle(thirdAnswers[index], for: .normal)
            }
        } else if index == 3 {
            for (index, button) in buttons.enumerated() {
                button.setTitle(fourthAnswers[index], for: .normal)
            }
        } else {
            for i in buttons {
                i.isHidden = true
            }
            scoreLabel.text = "Ваш результат: \(mathScore)"
            backButton.isHidden = false
            RatingSettings.mathResults = "\(mathScore)"
        }
        
    }
    
    @IBAction func backButton(_ sender: Any) {
//        navigationController?.popToRootViewController(animated: true)
        navigationController?.popViewController(animated: true)

    }
    
}
