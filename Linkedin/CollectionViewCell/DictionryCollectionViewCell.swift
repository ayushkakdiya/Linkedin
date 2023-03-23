//
//  DictionryCollectionViewCell.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 09/03/23.
//

import UIKit

class DictionryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var profileDp: UIImageView!
    @IBOutlet weak var group: UILabel!
    @IBOutlet weak var member: UILabel!
    @IBOutlet weak var joinButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    @IBAction func joinButtonAction(_ sender: UIButton) {
        
        
        
    }
}
