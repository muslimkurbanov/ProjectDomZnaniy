//
//  TestHistoryVC.swift
//  TestCase2
//
//  Created by Муслим Курбанов on 12.12.2020.
//

import UIKit

class TestHistoryVC: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var index = 0
    var historyScore = 0
    let questionsArray = ["Германский план нападения на СССР («Барбаросса») предусматривал",
                          "Высшим государственным органом, сосредоточившим всю полноту власти в годы Великой Отечественной войны стал",
                          "В чем заключалось значение битвы за Москву?",
                          "В каком году СССР превзошел Германию по выпуску военной продукции",
                          "Тест завершен"]
    
    let rightAnswers = ["Расчленение СССР на отдельные государства",
                        "Совет труда и обороны",
                        "Был сорван план молниеносной войны",
                        "В начале 1944 г."]
    
    let firstAnswers = ["Расчленение СССР на отдельные государства",
                        "Колонизацию Германией всей территории СССР",
                        "Уничтожение единого государства, колонизацию европейской части  СССР.",
                        "Геноцид Еврейского населения СССР"]
    
    let secondAnswers = ["Государственный комитет обороны",
                         "Совет труда и обороны",
                         "Ставка Верховного Главнокомандования",
                         "Генеральный секретарь ЦК КПСС"]
    
    let thirdAnswers = ["Был сорван план молниеносной войны",
                        "Был открыт второй фронт в Европе",
                        "Стратегическая инициатива перешла в руки советского командования",
                        "Подъем морального духа населения СССР"]
    
    let fourthAnswers = ["В конце 1942 г.",
                         "В середине 1943 г.",
                         "В начале 1944 г.",
                         "В конце 1945"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = questionsArray[index]
        for (index, button) in buttons.enumerated() {
            button.setTitle(firstAnswers[index], for: .normal)
        }
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if sender.title(for: .normal) == rightAnswers[index] {
            index += 1
            historyScore += 1
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
            scoreLabel.text = "Ваш результат: \(historyScore)"
            backButton.isHidden = false
            RatingSettings.historyResults = "\(historyScore)"
        }
    }
    
    @IBAction func backButton(_ sender: Any) {
        
//        navigationController?.popToRootViewController(animated: true)
        navigationController?.popViewController(animated: true)

    }
    
}
