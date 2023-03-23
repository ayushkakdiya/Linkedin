//
//  PagesViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 14/03/23.
//

import UIKit

struct PageDetail {
    var profileName: String
    var followers: String
}

class PagesViewController: UIViewController {

    @IBOutlet weak var pageTableView: UITableView!
    
    var arrImage: [String] = ["homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8"]
    var arrProfileName: [String] = ["Ayush Kakdiya","Kamo","Apple","red & White Multimidia Education","infosys","Narendra Modi","Elon Musk","Amazon"]
    var arrprofileFollowers: [String] = ["1500 Followers","2000 Followers","17000 Followers","21000Followers","32520 Followers","213022 Followers","132312 Followers","100100 Followers"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
registerNib()
    }
    

    func registerNib() {
        pageTableView.register(UINib(nibName: "PagesTableViewCell", bundle: nil), forCellReuseIdentifier: "PagesTableViewCell")
    }
}

extension PagesViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PagesTableViewCell = pageTableView.dequeueReusableCell(withIdentifier: "PagesTableViewCell", for: indexPath) as! PagesTableViewCell
        cell.profileName.text = "\(arrProfileName[indexPath.row])"
        cell.post.image = UIImage(named: arrImage[indexPath.row])
        cell.followers.text = "\(arrprofileFollowers[indexPath.row])"
        return cell
    }
    
    
}
