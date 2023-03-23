//
//  FollowTableViewCell.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 14/03/23.
//

import UIKit

class FollowTableViewCell: UITableViewCell {

    @IBOutlet weak var post: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var company: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
deshine()
    }
    
    func deshine() {
        post.layer.cornerRadius = 40
    }
}
