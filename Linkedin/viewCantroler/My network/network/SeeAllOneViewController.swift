//
//  SeeAllOneViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 13/03/23.
//

import UIKit

struct Details {
    var profileNAme: String
    var degree: String
    var contects: String
}
class SeeAllOneViewController: UIViewController {
    
    @IBOutlet weak var connectCollectionView: UICollectionView!
    
    var arrPoster: [String] = ["poster1","poster2","poster3","poster4","poster5","poster6","poster7","poster8"]
    var arrImage: [String] = ["homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8"]
    var arrProfileName: [String] = ["Ayush Kakdiya","Kamo","Apple","Red & white Multimidia Education","infosys","Narendra Modi","Elon Musk","Amazon"]
    var arrDegree: [String] = ["infosys","Red & white Multimidia Education","Graphic Designer","iOS Devloper","3D Animation","Red & white Multimidia Education","infosys","Red & white Multimidia Education"]
    var arrprofileFollowers: [String] = ["1500 Followers","2000 Followers","17000 Followers","21000Followers","32520 Followers","213022 Followers","132312 Followers","100100 Followers"]
    override func viewDidLoad() {
        super.viewDidLoad()
register()
        
    }
    
    
    func register() {
        connectCollectionView.register(UINib(nibName: "SeeAllOneCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SeeAllOneCollectionViewCell")
    }



}

extension SeeAllOneViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: SeeAllOneCollectionViewCell = connectCollectionView.dequeueReusableCell(withReuseIdentifier: "SeeAllOneCollectionViewCell", for: indexPath) as! SeeAllOneCollectionViewCell
        cell.profileName.text = "\(arrProfileName[indexPath.row])"
        cell.profileDp.image = UIImage(named: arrImage[indexPath.row])
        cell.poster.image = UIImage(named: arrPoster[indexPath.row])
        cell.degree.text = "\(arrDegree[indexPath.row])"
        cell.contects.text = "\(arrprofileFollowers[indexPath.row])"
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.cornerRadius = 10
        return cell
    }
    
    
}


extension SeeAllOneViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 260)
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
