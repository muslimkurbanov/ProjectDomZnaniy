//
//  RegistrationViewController.swift
//  TestCase2
//
//  Created by Муслим Курбанов on 12.12.2020.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!

    @IBOutlet weak var surnameTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var classTF: UITextField!
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var numberOfPhoneTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.scrollView.delegate = self
        emailTF.delegate = self
        
        textFieldDidBeginEditing(emailTF)
        
        surnameTF.text = UserSettings.surname
        nameTF.text = UserSettings.name
        lastNameTF.text = UserSettings.lastName
        classTF.text = UserSettings.Class
        cityTF.text = UserSettings.city
        numberOfPhoneTF.text = UserSettings.number
        emailTF.text = UserSettings.email
        
        scrollView.isScrollEnabled = true
        scrollView.showsVerticalScrollIndicator = true
        scrollView.contentSize = CGSize(width: 375, height: 1200)
        
        scrollView.keyboardDismissMode = .onDrag
    }
    
    
    
    //MARK: - SaveButton
    @IBAction func saveButton(_ sender: Any) {
        UserSettings.surname = surnameTF.text
        UserSettings.name = nameTF.text
        UserSettings.lastName = lastNameTF.text
        UserSettings.Class = classTF.text
        UserSettings.city = cityTF.text
        UserSettings.number = numberOfPhoneTF.text
        UserSettings.email = emailTF.text
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        guard let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
           // if keyboard size is not available for some reason, dont do anything
           return
        }
      // move the root view up by the distance of keyboard height
      self.view.frame.origin.y = 0 - keyboardSize.height
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
      // move back the root view origin to zero
      self.view.frame.origin.y = 0
    }

}

extension RegistrationViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
    }
}

extension RegistrationViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
}

