//
//  PostAJobViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 16/03/23.
//

import UIKit

class PostAJobViewController: UIViewController {

    @IBOutlet weak var jobTextField: UITextField!
    @IBOutlet weak var compantTextField: UITextField!
    @IBOutlet weak var workplaceTextField: UITextField!
    @IBOutlet weak var jobLocationTextField: UITextField!
    @IBOutlet weak var jobTypeTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        deshine()
        
    }
    
    func deshine() {
        nextButton.layer.masksToBounds = true
        nextButton.layer.cornerRadius = 23
    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        if jobTextField.text == "" && compantTextField.text == "" && workplaceTextField.text == "" && jobLocationTextField.text == "" && jobTypeTextField.text == "" {
            displayValidation(massage: "Please Enter Details")
        } else if jobTextField.text == "" && compantTextField.text == "" && workplaceTextField.text == "" && jobLocationTextField.text == "" {
            displayValidation(massage: "Please Enter Details")
        } else if jobTextField.text == "" && compantTextField.text == "" && workplaceTextField.text == "" {
            displayValidation(massage: "Please Enter Details")
        } else if jobTextField.text == "" && compantTextField.text == "" {
            displayValidation(massage: "Please Enter Details")
        } else if compantTextField.text == "" && workplaceTextField.text == "" && jobLocationTextField.text == "" && jobTypeTextField.text == "" {
            displayValidation(massage: "Please Enter Details")
        } else if workplaceTextField.text == "" && jobLocationTextField.text == "" && jobTypeTextField.text == "" {
            displayValidation(massage: "Please Enter Details")
        } else if jobLocationTextField.text == "" && jobTypeTextField.text == "" {
            displayValidation(massage: "Please Enter Details")
        } else if jobTypeTextField.text == "" {
            displayValidation(massage: "Please Enter Details")
        } else if jobTextField.text == "" {
            displayValidation(massage: "Please Enter Details")
        } else if compantTextField.text == "" {
            displayValidation(massage: "Please Enter Details")
        } else if workplaceTextField.text == "" {
            displayValidation(massage: "Please Enter Details")
        }
    }
    
    private func displayValidetion(message: String) {
        let alert: UIAlertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okButton: UIAlertAction = UIAlertAction(title: "Ok", style: .cancel) { button in }
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
    private func displayValidation(massage: String) {
        let alert: UIAlertController = UIAlertController(title: "Error", message: massage, preferredStyle: .alert)
        let okButton: UIAlertAction = UIAlertAction(title: "OK", style: .cancel) { button in }
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
}
