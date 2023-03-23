//
//  DiscoveryTableViewCell.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 07/03/23.
//

import UIKit

class DiscoveryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var joinButton: UIButton!
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var profileDp: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var members: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    @IBAction func joinButtonAction(_ sender: UIButton) {
//
//
//    }
}
