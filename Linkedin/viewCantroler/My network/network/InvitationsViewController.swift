//
//  InvitationsViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 13/03/23.
//

import UIKit

class InvitationsViewController: UIViewController {

    
    
    @IBOutlet weak var firstContainerView: UIView!
    
    @IBOutlet weak var secondContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    setIndex(index: 0)
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func segmentButtonAction(_ sender: UISegmentedControl) {
        setIndex(index: sender.selectedSegmentIndex)
    }
    
    
    private func setIndex(index: Int) {
        switch index {
        case 0:
            firstContainerView.isHidden = true
            secondContainerView.isHidden = false
        case 1:
            firstContainerView.isHidden =  false
            secondContainerView.isHidden = true
        default:
            break
        }
    }


}
