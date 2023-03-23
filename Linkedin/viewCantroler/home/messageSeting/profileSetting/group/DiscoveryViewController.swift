//
//  DiscoveryViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 10/03/23.
//

import UIKit

struct Discover {
    var companyNamee: String
    var members: String
}

class DiscoveryViewController: UIViewController {
    
    
    @IBOutlet weak var discoverCollectionView: UICollectionView!
    
    var arrPoster: [String] = ["poster1","poster2","poster3","poster4","poster5","poster6","poster7","poster8"]
    var arrImage: [String] = ["homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8"]
    var arrProfileName: [String] = ["Ayush Kakdiya","Kamo","Apple","Red & white Multimidia Education","infosys","Narendra Modi","Elon Musk","Amazon"]
    var arrprofileFollowers: [String] = ["1500 Followers","2000 Followers","17000 Followers","21000Followers","32520 Followers","213022 Followers","132312 Followers","100100 Followers"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rergister()
    }
    
    
    func rergister() {
        discoverCollectionView.register(UINib(nibName: "DiscovryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "DiscovryCollectionViewCell")
    }
}

extension DiscoveryViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: DiscovryCollectionViewCell = discoverCollectionView.dequeueReusableCell(withReuseIdentifier: "DiscovryCollectionViewCell", for: indexPath) as! DiscovryCollectionViewCell
        cell.companyName.text = "\(arrProfileName[indexPath.row])"
        cell.profileDp.image = UIImage(named: arrImage[indexPath.row])
        cell.members.text = "\(arrprofileFollowers[indexPath.row])"
        cell.poster.image = UIImage(named: arrPoster[indexPath.row])
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.lightGray.cgColor
        return cell
    }
    
    
}

extension DiscoveryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 250)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 8, bottom: 0, right: 8)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
}
