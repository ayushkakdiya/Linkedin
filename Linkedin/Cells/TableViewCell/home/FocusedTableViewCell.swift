//
//  FocusedTableViewCell.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 10/03/23.
//

import UIKit

class FocusedTableViewCell: UITableViewCell {

    
    @IBOutlet weak var post: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
deshine()
    }
    
    func deshine() {
        post.layer.cornerRadius = 38.5
    }
    
}
