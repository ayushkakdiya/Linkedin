//
//  GroupViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 06/03/23.
//

import UIKit

class GroupViewController: UIViewController {
    
    @IBOutlet weak var segmantBuitton: UISegmentedControl!
    
    @IBOutlet weak var secondContainerView: UIView!
    
    @IBOutlet weak var firstContenairView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setIndexInBottom(index: 0)
    }
    
    
    
    func setIndexInBottom(index: Int) {
        switch index {
        case 0:
            firstContenairView.isHidden = false
            secondContainerView.isHidden = true
        case 1:
            firstContenairView.isHidden = false
            secondContainerView.isHidden = true
        case 2:
            firstContenairView.isHidden = true
            secondContainerView.isHidden = false
        default:
            break
        }
        
    }
    
    @IBAction func segmentButtonAction(_ sender: UISegmentedControl) {
        setIndexInBottom(index: sender.selectedSegmentIndex)
    }
    
    
}
