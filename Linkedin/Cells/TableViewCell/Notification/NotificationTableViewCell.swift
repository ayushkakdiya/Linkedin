//
//  NotificationTableViewCell.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 15/03/23.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {

    @IBOutlet weak var profileDp: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var details: UILabel!
    
    
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
        profileDp.layer.cornerRadius = 38.5
    }
    
}
