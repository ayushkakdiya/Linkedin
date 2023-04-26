//
//  SentTableViewCell.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 20/03/23.
//

import UIKit

class SentTableViewCell: UITableViewCell {

    @IBOutlet weak var post: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var sentMonth: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        post.layer.cornerRadius = 44.5
    }
    
    
    
}
