//
//  PagesTableViewCell.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 14/03/23.
//

import UIKit

class PagesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var post: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var followers: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        deshine()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    func deshine() {
        post.layer.cornerRadius = 38.5
    }
    
}
