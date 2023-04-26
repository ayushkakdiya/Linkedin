//
//  SeeAllTwoCollectionViewCell.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 14/03/23.
//

import UIKit

class SeeAllTwoCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var profilePost: UIImageView!
    @IBOutlet weak var followButton: UIButton!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var degree: UILabel!
    @IBOutlet weak var followers: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        deshine()
    }

    @IBAction func actionButton(_ sender: UIButton) {
        if  followButton.tag == 0 {
            followButton.setTitle("Following", for: .normal)
            followButton.tag = 1
        } else {
            followButton.setTitle("Follow", for: .normal)
            followButton.tag = 0
        }
    }
    
    
    func deshine() {
        followButton.layer.borderWidth = 1
        followButton.layer.cornerRadius = 12
        followButton.layer.borderColor = UIColor.systemBlue.cgColor
    }
    
}
