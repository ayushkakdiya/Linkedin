//
//  RecommendedTableViewCell.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 16/03/23.
//

import UIKit

class RecommendedTableViewCell: UITableViewCell {

    
    @IBOutlet weak var profileDp: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var area: UILabel!
    @IBOutlet weak var myDp: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        deshine()
    }
    
    func deshine() {
//        profileDp.layer.cornerRadius = 35
        myDp.layer.cornerRadius = 15
    }
    
}
