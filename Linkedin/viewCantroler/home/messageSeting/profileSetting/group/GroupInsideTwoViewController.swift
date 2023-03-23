//
//  GroupInsideTwoViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 06/03/23.
//

import UIKit

struct Discovery {
    var joinButton: UIButton
    var poster: UIImage
    var profileDp: UIImage
    var group: String
    var member: String
}

class GroupInsideTwoViewController: UIViewController {

    var arrDiscovery: String = "1234567"
    
    
    @IBOutlet weak var discoveryCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension GroupInsideTwoViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrDiscovery.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: DictionryCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DictionryCollectionViewCell", for: indexPath) as! DictionryCollectionViewCell
        cell.group.text = "\(arrDiscovery)"
        return cell
    }
    
    
}
