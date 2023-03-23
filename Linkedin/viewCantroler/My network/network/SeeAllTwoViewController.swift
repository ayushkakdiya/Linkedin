//
//  SeeAllTwoViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 13/03/23.
//

import UIKit
struct Detail {
    var profileName: String
    var degree: String
    var followers: String
}

class SeeAllTwoViewController: UIViewController {

    
    @IBOutlet weak var seeTwoCollectionView: UICollectionView!
    
    
    var arrPosterTwo: [String] = ["newoneposter 1","newoneposter2","newoneposter3","newoneposter4","newoneposter5","newoneposter6","newoneposter7","newoneposter8"]
    var arrImageTwo: [String] = ["homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8"]
    var arrProfileNameTwo: [String] = ["Ayush Kakdiya","Kamo","Apple","Red & white Multimidia Education","infosys","Narendra Modi","Elon Musk","Amazon"]
    var arrdiscription: [String] = ["🤗 Delivered by expert PMs from Toothsi, IBM, PayPal & more, the MasterCamp in Product Management is a 12-month programme designed to help you transition to Product Management. It also includes:","I’m happy to share that I’ve obtained a new certification: 1 Mentorship Session from","How’d that happen? When errors get submitted through Instabug, you’ll have full context including device info, app versions, and even screenshots leading up to the bug.","Holi hai! Let’s drench each other in colors and spread joy.Holi celebration with Mahardhi Technologies Family!","Get the most out of your MongoDB deployments, including querying, scaling, and data modeling, with these best practices.","We are incredibly lucky to be in a position to be able to give forward or invest in the future. We were fortunate to be at the right place and time with the right products & initiatives when the markets grew quickly in the last few years.","Running an eCommerce business is no easy job. With countless things to take care of, the last thing you want is more work coming your way. It can be difficult to consistently come up with crisp product descriptions that your customers want to read.Fortunately, you can generate high-quality product descriptions for free with Dukaan’s product description generator.","All you have to do is select the product category, enter the necessary product details, and wait for our product description generator to create a product description for you."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
registerNib()
        // Do any additional setup after loading the view.
    }
    
    
    func registerNib() {
        seeTwoCollectionView.register(UINib(nibName: "SeeAllTwoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SeeAllTwoCollectionViewCell")
    }

}


extension SeeAllTwoViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrdiscription.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: SeeAllTwoCollectionViewCell = seeTwoCollectionView.dequeueReusableCell(withReuseIdentifier: "SeeAllTwoCollectionViewCell", for: indexPath) as! SeeAllTwoCollectionViewCell
        cell.profileName.text = "\(arrProfileNameTwo[indexPath.row])"
        cell.poster.image = UIImage(named: arrPosterTwo[indexPath.row])
        cell.degree.text = "\(arrdiscription[indexPath.row])"
        cell.profilePost.image = UIImage(named: arrImageTwo[indexPath.row])
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.cornerRadius = 10
        return cell
    }
    
    
}

extension SeeAllTwoViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 375, height: 200)
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
