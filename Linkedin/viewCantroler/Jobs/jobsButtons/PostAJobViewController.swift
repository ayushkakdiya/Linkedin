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
    
    
    private func displayValidetion(message: String) {
        let alert: UIAlertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okButton: UIAlertAction = UIAlertAction(title: "Ok", style: .cancel) { button in }
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        
    }
    
    
    

}
