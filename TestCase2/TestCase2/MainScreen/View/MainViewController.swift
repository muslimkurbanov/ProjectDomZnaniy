//
//  MainViewController.swift
//  TestCase2
//
//  Created by Муслим Курбанов on 13.12.2020.
//

import UIKit

class MainViewController: UIViewController {

    let math = RatingSettings.mathResults
    let russian = RatingSettings.russianResults
    let social = RatingSettings.soicialResults
    let history = RatingSettings.historyResults
    
    var middle: Int = 0
    
    @IBOutlet weak var mathLabel: UILabel!
    @IBOutlet weak var russianLabel: UILabel!
    @IBOutlet weak var socialLabel: UILabel!
    @IBOutlet weak var historyLabel: UILabel!
    
    @IBOutlet weak var middleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mathLabel.text = "Оценка по математике: \(math ?? "")"
        russianLabel.text = "Оценка по русскому языку: \(russian ?? "")"
        socialLabel.text = "Оценка по обществознанию: \(russian ?? "")"
        historyLabel.text = "Оценка по истории: \(history ?? "")"
        
//        middle = (Int(UserSettings.mathResults) ?? 0 + Int(UserSettings.russianResults) ?? 0 + Int(UserSettings.socialResults) ?? 0 + Int(UserSettings.historyResults) ?? 0) / 4
        
        
//        middle = ((Int(mathLabel.text ?? "1")! + Int(russianLabel.text ?? "1")! + Int(socialLabel.text ?? "1")! + Int(historyLabel.text ?? "1")!) / 4)
//        middleLabel.text = "\(middle)"
        
    }
    

    @IBAction func backButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
