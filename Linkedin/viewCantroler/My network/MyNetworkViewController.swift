//
//  MyNetworkViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 11/03/23.
//

import UIKit

struct MyNetwork {
    var profileName: String
    var deegree: String
    var connection: String
    var connectButton: String
}

struct Subscribe {
    var profileName: String
    var descriptions: String
}

class MyNetworkViewController: UIViewController {
    
    @IBOutlet weak var connectionCollectionView: UICollectionView!
    @IBOutlet weak var subscribeCillectionView: UICollectionView!
    @IBOutlet weak var manageNetworkButton: UIButton!
    @IBOutlet weak var invitationButton: UIButton!
    @IBOutlet weak var seeAllOneButton: UIButton!
    @IBOutlet weak var seeAllTwoButton: UIButton!
    
    var arrPosterTwo: [String] = ["newposter1","newposter2","newposter3","newposter4","newposter5","newposter6","newposter7","newposter8"]
    var arrImageTwo: [String] = ["homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8"]
    var arrProfileNameTwo: [String] = ["Ayush Kakdiya","Kamo","Apple","Red & white Multimidia Education","infosys","Narendra Modi","Elon Musk","Amazon"]
    var arrdiscription: [String] = ["🤗 Delivered by expert PMs from Toothsi, IBM, PayPal & more, the MasterCamp in Product Management is a 12-month programme designed to help you transition to Product Management. It also includes:","I’m happy to share that I’ve obtained a new certification: 1 Mentorship Session from","How’d that happen? When errors get submitted through Instabug, you’ll have full context including device info, app versions, and even screenshots leading up to the bug.","Holi hai! Let’s drench each other in colors and spread joy.Holi celebration with Mahardhi Technologies Family!","Get the most out of your MongoDB deployments, including querying, scaling, and data modeling, with these best practices.","We are incredibly lucky to be in a position to be able to give forward or invest in the future. We were fortunate to be at the right place and time with the right products & initiatives when the markets grew quickly in the last few years.","Running an eCommerce business is no easy job. With countless things to take care of, the last thing you want is more work coming your way. It can be difficult to consistently come up with crisp product descriptions that your customers want to read.Fortunately, you can generate high-quality product descriptions for free with Dukaan’s product description generator.","All you have to do is select the product category, enter the necessary product details, and wait for our product description generator to create a product description for you."]
    
    
    
    
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
        connectionCollectionView.register(UINib(nibName: "ConnectionCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ConnectionCollectionViewCell")
        subscribeCillectionView.register(UINib(nibName: "SubscrideCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SubscrideCollectionViewCell")
        
    }
    
    @IBAction func manageNetworkButtonAction(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let manageMyNetworkViewController: ManageMyNetworkViewController = storyBoard.instantiateViewController(identifier: "ManageMyNetworkViewController") as! ManageMyNetworkViewController
        self.navigationController?.pushViewController(manageMyNetworkViewController, animated: true)
        
    }
    
    @IBAction func invitationButtonAction(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let invitationsViewController: InvitationsViewController = storyBoard.instantiateViewController(identifier: "InvitationsViewController") as! InvitationsViewController
        self.navigationController?.pushViewController(invitationsViewController, animated: true)
        
    }
    
    
    @IBAction func seeAllOneButtonAction(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let seeAllOneViewController: SeeAllOneViewController = storyBoard.instantiateViewController(identifier: "SeeAllOneViewController") as! SeeAllOneViewController
        self.navigationController?.pushViewController(seeAllOneViewController, animated: true)
        
    }
    
    @IBAction func seeAllTwoButtonAction(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let seeAllTwoViewController: SeeAllTwoViewController = storyBoard.instantiateViewController(identifier: "SeeAllTwoViewController") as! SeeAllTwoViewController
        self.navigationController?.pushViewController(seeAllTwoViewController, animated: true)
        
    }
    
}

extension MyNetworkViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.connectionCollectionView {
            return arrImage.count
        } else {
            return arrProfileName.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.connectionCollectionView {
            let cell: ConnectionCollectionViewCell = connectionCollectionView.dequeueReusableCell(withReuseIdentifier: "ConnectionCollectionViewCell", for: indexPath) as! ConnectionCollectionViewCell
            cell.poster.image = UIImage(named: arrPoster[indexPath.row])
            cell.profileDp.image = UIImage(named: arrImage[indexPath.row])
            cell.profileName.text = "\(arrProfileName[indexPath.row])"
            cell.deegree.text = "\(arrDegree[indexPath.row])"
            cell.connection.text = "\(arrprofileFollowers[indexPath.row])"
            cell.layer.borderWidth = 1
            cell.layer.borderColor = UIColor.lightGray.cgColor
            cell.layer.cornerRadius = 10
            return cell
        } else {
            let cell: SubscrideCollectionViewCell = subscribeCillectionView.dequeueReusableCell(withReuseIdentifier: "SubscrideCollectionViewCell", for: indexPath) as! SubscrideCollectionViewCell
            cell.profileName.text = "\(arrProfileNameTwo[indexPath.row])"
            cell.poster.image = UIImage(named: arrPosterTwo[indexPath.row])
            cell.profileDp.image = UIImage(named: arrImage[indexPath.row])
            cell.descriptions.text = "\(arrdiscription[indexPath.row])"
            cell.layer.borderWidth = 1
            cell.layer.borderColor = UIColor.lightGray.cgColor
            cell.layer.cornerRadius = 10
            return cell
        }
    }
}


extension MyNetworkViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.connectionCollectionView{
            return CGSize(width: 180, height: 240)
        } else {
            return CGSize(width: 375, height: 230)
        }
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


