//
//  messageViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 03/03/23.
//

import UIKit


class MessageViewController: UIViewController {
    
    @IBOutlet weak var sliderButton: UIButton!
    @IBOutlet weak var moreButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func moreButtonAction(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let moreViewController: MoreViewController = storyBoard.instantiateViewController(identifier: "MoreViewController") as! MoreViewController
        self.navigationController?.pushViewController(moreViewController, animated: true)
    }
    
    @IBAction func sliderButtonAction(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let sliderViewController: SliderViewController = storyboard?.instantiateViewController(identifier: "SliderViewController") as! SliderViewController
        navigationController?.pushViewController(sliderViewController, animated: true)
    }
}
