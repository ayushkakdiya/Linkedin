//
//  HomeViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 24/02/23.
//

import UIKit

struct ProfilePost {
    var profileName: String
    var profileFollowers: String
    var discription: String
}

class HomeViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var postColectionView: UICollectionView!
    
    // MARK: array
    
    var arrPost: [String] = ["homepost1","homepost2","homepost3","homepost4","homepost5","homepost6","homepost7","homepost8"]
    var arrImage: [String] = ["homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8"]
    var arrProfileName: [String] = ["Ayush Kakdiya","Kamo","Apple","red & White Multimidia Education","infosys","Narendra Modi","Elon Musk","Amazon"]
    var arrprofileFollowers: [String] = ["1500 Followers","2000 Followers","17000 Followers","21000Followers","32520 Followers","213022 Followers","132312 Followers","100100 Followers"]
    var arrdiscription: [String] = ["🤗 Delivered by expert PMs from Toothsi, IBM, PayPal & more, the MasterCamp in Product Management is a 12-month programme designed to help you transition to Product Management. It also includes:","I’m happy to share that I’ve obtained a new certification: 1 Mentorship Session from","How’d that happen? When errors get submitted through Instabug, you’ll have full context including device info, app versions, and even screenshots leading up to the bug.","Holi hai! Let’s drench each other in colors and spread joy.Holi celebration with Mahardhi Technologies Family!","Get the most out of your MongoDB deployments, including querying, scaling, and data modeling, with these best practices.","We are incredibly lucky to be in a position to be able to give forward or invest in the future. We were fortunate to be at the right place and time with the right products & initiatives when the markets grew quickly in the last few years.","Running an eCommerce business is no easy job. With countless things to take care of, the last thing you want is more work coming your way. It can be difficult to consistently come up with crisp product descriptions that your customers want to read.Fortunately, you can generate high-quality product descriptions for free with Dukaan’s product description generator.","All you have to do is select the product category, enter the necessary product details, and wait for our product description generator to create a product description for you."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ragister()
    }
    
    // MARK: messageButtonAction
    @IBAction func messageButtonAction(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let messageViewController: MessageViewController = storyBoard.instantiateViewController(withIdentifier: "MessageViewController") as! MessageViewController
        self.navigationController?.pushViewController(messageViewController, animated: true)
    }
    
    // MARK: profileButtonAction
    @IBAction func profileButtonAction(_ sender: UIButton) {
        let storyBord: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let ProfileSettingViewController: ProfileSettingViewController = storyboard?.instantiateViewController(withIdentifier: "ProfileSettingViewController") as! ProfileSettingViewController
        self.navigationController?.pushViewController(ProfileSettingViewController, animated: true)
    }
    
    // MARK: NIB
    private func ragister(){
        postColectionView.register(UINib(nibName: "HomePostCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
    }
}

// MARK: CollectionView
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrProfileName.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: HomePostCollectionViewCell = postColectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomePostCollectionViewCell
        cell.profileName.text = (arrProfileName[indexPath.row])
        cell.profileFollowers.text = (arrprofileFollowers[indexPath.row])
        cell.discription.text = (arrdiscription[indexPath.row])
        cell.profileDp.image = UIImage(named: arrImage[indexPath.row])
        cell.post.image = UIImage(named: arrPost[indexPath.row])
        return cell
    }
}


extension HomeViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 400, height: 620)
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
