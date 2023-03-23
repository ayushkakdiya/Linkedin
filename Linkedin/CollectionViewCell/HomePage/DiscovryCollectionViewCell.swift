//
//  DiscovryCollectionViewCell.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 10/03/23.
//

import UIKit

class DiscovryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var profileDp: UIImageView!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var members: UILabel!
    @IBOutlet weak var joinButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        deshine()
    }
    
    
    func deshine() {
        joinButton.layer.cornerRadius = 15
        joinButton.layer.borderWidth = 1
        joinButton.layer.borderColor = UIColor.systemBlue.cgColor
        
    }

    @IBAction func joinButton(_ sender: UIButton) {
        
        if joinButton.tag == 0 {
            joinButton.setTitle("joined", for: .normal)
            joinButton.tag = 1
        } else {
            joinButton.setTitle("join", for: .normal)
            joinButton.tag = 0
        }
    }
    
  
}
