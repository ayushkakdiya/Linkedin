//
//  PepoleIFollowViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 14/03/23.
//

import UIKit

struct IFollowDetail {
    var profileName: String
    var company: String
}

class PepoleIFollowViewController: UIViewController {

    
    @IBOutlet weak var iFollowTableView: UITableView!
    
    
    var arrImage: [String] = ["homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8"]
    var arrProfileName: [String] = ["Ayush Kakdiya","Kamo","Apple","red & White Multimidia Education","infosys","Narendra Modi","Elon Musk","Amazon"]
    var arrdiscription: [String] = ["Delivered by expert PMs from Toothsi, IBM, PayPal & more, the MasterCamp in Product Management is a 12-month programme designed to help you transition to Product Management. It also includes:","I’m happy to share that I’ve obtained a new certification: 1 Mentorship Session from","How’d that happen? When errors get submitted through Instabug, you’ll have full context including device info, app versions, and even screenshots leading up to the bug.","Holi hai! Let’s drench each other in colors and spread joy.Holi celebration with Mahardhi Technologies Family!","Get the most out of your MongoDB deployments, including querying, scaling, and data modeling, with these best practices.","We are incredibly lucky to be in a position to be able to give forward or invest in the future. We were fortunate to be at the right place and time with the right products & initiatives when the markets grew quickly in the last few years.","Running an eCommerce business is no easy job. With countless things to take care of, the last thing you want is more work coming your way. It can be difficult to consistently come up with crisp product descriptions that your customers want to read.Fortunately, you can generate high-quality product descriptions for free with Dukaan’s product description generator.","All you have to do is select the product category, enter the necessary product details, and wait for our product description generator to create a product description for you."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
        
    }

    
    func registerNib() {
        iFollowTableView.register(UINib(nibName: "FollowTableViewCell", bundle: nil), forCellReuseIdentifier: "FollowTableViewCell")
    }
}


extension PepoleIFollowViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: FollowTableViewCell = iFollowTableView.dequeueReusableCell(withIdentifier: "FollowTableViewCell", for: indexPath) as! FollowTableViewCell
        cell.profileName.text = "\(arrProfileName[indexPath.row])"
        cell.post.image = UIImage(named: arrImage[indexPath.row])
        cell.company.text = "\(arrdiscription[indexPath.row])"
        return cell
    }
    
    
}
