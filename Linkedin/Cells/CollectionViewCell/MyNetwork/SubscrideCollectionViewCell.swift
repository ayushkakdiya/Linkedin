//
//  SubscrideCollectionViewCell.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 13/03/23.
//

import UIKit

class SubscrideCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var profileDp: UIImageView!
    @IBOutlet weak var subscribeButton: UIButton!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var descriptions: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        deshine()
    }
    
    @IBAction func actiponButton(_ sender: UIButton) {
        
        if  subscribeButton.tag == 0 {
            subscribeButton.setTitle("Unsubscribe", for: .normal)
            subscribeButton.tag = 1
        } else {
            subscribeButton.setTitle("Subscribe", for: .normal)
            subscribeButton.tag = 0
        }
    }
    func deshine() {
        subscribeButton.layer.borderWidth = 1
        subscribeButton.layer.cornerRadius = 15
        subscribeButton.layer.borderColor = UIColor.systemBlue.cgColor
    }
    
    

}
