//
//  HomePostCollectionViewCell.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 24/02/23.
//

import UIKit

class HomePostCollectionViewCell: UICollectionViewCell {

    
   
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var send: UIButton!
    @IBOutlet weak var repost: UIButton!
    @IBOutlet weak var comment: UIButton!
    @IBOutlet weak var like: UIButton!
    @IBOutlet weak var post: UIImageView!
    @IBOutlet weak var discription: UILabel!
    @IBOutlet weak var profileFollowers: UILabel!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileDp: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        deshine()
    }
    func deshine() {
        profileDp.layer.cornerRadius = 35
    }

    @IBAction func likeButton(_ sender: UIButton) {
        
        
        if likeButton.tag == 0 {
            like.setImage(UIImage(systemName: "hand.thumbsup.fill"), for: .normal)
            likeButton.tag = 1
        }
        else {
            like.setImage(UIImage(systemName: "hand.thumbsup"), for: .normal)
            likeButton.tag = 0
        }
        
    }
}
