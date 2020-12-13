//
//  TestRussianVC.swift
//  TestCase2
//
//  Created by Муслим Курбанов on 13.12.2020.
//

import UIKit

class TestRussianVC: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var index = 0
    var russianScore = 0
    let questionsArray = ["Укажите в каком предложении присутствует причастие",
                          "В каком слове допущена ошибка в транскрипции?",
                          "Какое слово не является родственным?",
                          "Какое существительное не относится ко II склонению?",
                          "Тест завершен"]
    
    let rightAnswers = ["он выиграл в турнире,взяв первое место",
                        "[с'н'эк]",
                        "налаживать",
                        "лунь"]
    
    let firstAnswers = ["мой брат вышел в магазин",
                        "он спроектировал самолёт",
                        "он выиграл в турнире,взяв первое место",
                        "Андрей сказал ему «Не возвращайся больше домой!"]
    let secondAnswers = ["[с'н'эк]",
                         "[б'эр'ик]",
                         "[п'эс'инка]",
                         "[учин'ик]"]
    
    let thirdAnswers = ["излагать",
                        "налаживать",
                        "положение",
                        "полагать"]
    
    let fourthAnswers = ["студень",
                         "монастырь",
                         "олень",
                         "лунь"]
    
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
            russianScore += 1
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
            scoreLabel.text = "Ваш результат: \(russianScore)"
            backButton.isHidden = false
            RatingSettings.russianResults = "\(russianScore)"
        }
    }
   
    @IBAction func backButton(_ sender: Any) {
//        navigationController?.popToRootViewController(animated: true)
        navigationController?.popViewController(animated: true)

    }

}
