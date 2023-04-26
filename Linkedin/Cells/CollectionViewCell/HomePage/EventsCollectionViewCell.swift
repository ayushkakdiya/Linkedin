//
//  EventsCollectionViewCell.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 09/03/23.
//

import UIKit

class EventsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var dateAndTime: UILabel!
    @IBOutlet weak var componyName: UILabel!
    @IBOutlet weak var discription: UILabel!
    @IBOutlet weak var joinButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        deshine()
    }
    
    func deshine() {
        joinButton.layer.cornerRadius = 18
        joinButton.layer.borderColor = UIColor.systemBlue.cgColor
        joinButton.layer.borderWidth = 1
    }

    @IBAction func joinButtonAction(_ sender: UIButton) {
        
        if joinButton.tag == 0 {
            joinButton.setTitle("joined", for: .normal)
            joinButton.tag = 1
        } else {
            joinButton.setTitle("join", for: .normal)
            joinButton.tag = 0
        }
    }
    
    
}
