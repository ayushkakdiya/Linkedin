//
//  ProfileSettingViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 11/03/23.
//

import UIKit

class ProfileSettingViewController: UIViewController {
    
    
    @IBOutlet weak var groupButton: UIButton!
    
    
    @IBOutlet weak var eventButton: UIButton!
    
    @IBOutlet weak var settingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func groupButtonAction(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let groupViewController: GroupViewController = storyBoard.instantiateViewController(withIdentifier: "GroupViewController") as! GroupViewController
        self.navigationController?.pushViewController(groupViewController, animated: true)
    }
    
    
    @IBAction func eventButtonAction(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let eventViewController: EventViewController = storyBoard.instantiateViewController(withIdentifier: "EventViewController") as! EventViewController
        self.navigationController?.pushViewController(eventViewController, animated: true)
    }
    
    @IBAction func settingButtonAction(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let settingViewController: SettingViewController = storyBoard.instantiateViewController(withIdentifier: "SettingViewController") as! SettingViewController
        self.navigationController?.pushViewController(settingViewController, animated: true)
    }
    
    
}
