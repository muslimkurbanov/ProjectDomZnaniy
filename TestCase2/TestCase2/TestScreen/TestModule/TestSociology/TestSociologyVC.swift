//
//  TestSociologyVC.swift
//  TestCase2
//
//  Created by Муслим Курбанов on 12.12.2020.
//

import UIKit

class TestSociologyVC: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var index = 0
    var sociologyScore = 0
    let questionsArray = ["Кто защищает права подсудимого и защищает его интересы",
                          "Особые действия,  совершаемые специальными лицами в строгой последовательности",
                          "Мера воздействия, применяемая к нарушителям установленных норм, правил",
                          "Ниже приведен перечень терминов.Все они за исключением одного, соответствуют понятию \"участники судебного процесса\". Укажите термин, не относящийся к данному понятию",
                          "Тест завершен"]
    
    let rightAnswers = ["прокурор",
                        "ритуал",
                        "право",
                        "адвокат"]
    
    let firstAnswers = ["нотариус",
                        "частный детектив",
                        "адвокат",
                        "прокурор"]
    
    let secondAnswers = ["обряд",
                         "ритуал",
                         "привычка",
                         "закон"]
    
    let thirdAnswers = ["норма",
                        "порядок",
                        "право",
                        "санкция"]
    
    let fourthAnswers = ["адвокат",
                         "нотариус",
                         "прокурор",
                         "судья"]
    
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
            sociologyScore += 1
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
            scoreLabel.text = "Ваш результат: \(sociologyScore)"
            backButton.isHidden = false
            RatingSettings.soicialResults = "\(sociologyScore)"
        }
    }

    @IBAction func backButton(_ sender: Any) {
        if (RatingSettings.soicialResults != nil), (RatingSettings.historyResults != nil), (RatingSettings.mathResults != nil), RatingSettings.russianResults != "" {
            let vc = MainViewController()
//            navigationController?.pushViewController(vc, animated: true)
            pushToTest()
        } else {
//            navigationController?.popToRootViewController(animated: true)
            navigationController?.popViewController(animated: true)
        }
    }
}

extension TestSociologyVC {
    func pushToTest() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "MainVC")
        navigationController?.pushViewController(vc, animated: true)
    }
}
