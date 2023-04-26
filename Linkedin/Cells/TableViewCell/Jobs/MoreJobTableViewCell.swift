//
//  MoreJobTableViewCell.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 27/03/23.
//

import UIKit

class MoreJobTableViewCell: UITableViewCell {

    @IBOutlet weak var profileDp: UIImageView!
    @IBOutlet weak var jobTopic: UILabel!
    @IBOutlet weak var omponyName: UILabel!
    @IBOutlet weak var area: UILabel!
    @IBOutlet weak var related: UILabel!
    @IBOutlet weak var myPhoto: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        deshine()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func deshine() {
        myPhoto.layer.cornerRadius = 15    }
    
}
