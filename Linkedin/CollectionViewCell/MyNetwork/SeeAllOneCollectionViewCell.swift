//
//  SeeAllOneCollectionViewCell.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 14/03/23.
//

import UIKit

class SeeAllOneCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var profileDp: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var degree: UILabel!
    @IBOutlet weak var contects: UILabel!
    @IBOutlet weak var connectButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        deshine()
    }

    @IBAction func actionButton(_ sender: UIButton) {
        if connectButton.tag == 0 {
            connectButton.setTitle("Connected", for: .normal)
            connectButton.tag = 1
        } else {
            connectButton.setTitle("Connect", for: .normal)
            connectButton.tag = 0
        }
    }
    
    
    func deshine() {
        connectButton.layer.cornerRadius = 15
        connectButton.layer.borderWidth = 1
        connectButton.layer.borderColor = UIColor.systemBlue.cgColor
    }
}
