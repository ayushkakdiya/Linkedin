//
//  PagesViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 14/03/23.
//

import UIKit
import Alamofire

struct PageDetail {
    var profileName: String
    var followers: String
}

class PagesViewController: UIViewController {

    @IBOutlet weak var pageTableView: UITableView!
    
    var arrImage: [String] = ["homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8","homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8","homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8","homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8","homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8","homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8","homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8","homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8","homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8","homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8","homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8","homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8","homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8","homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8"]
    var arrProfileName: [UserDetails] = []
//    var arrprofileFollowers: [UserDetails] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
        getApi()
    }
    

    func registerNib() {
        pageTableView.register(UINib(nibName: "PagesTableViewCell", bundle: nil), forCellReuseIdentifier: "PagesTableViewCell")
    }
    
    private func getApi() {
        AF.request("https://tradestie.com/api/v1/apps/reddit",method: .get).responseData { response in
            debugPrint(response)
            guard let apiCalling = response.data else { return }
            do {
                self.arrProfileName = try JSONDecoder().decode([UserDetails].self, from: apiCalling)
//
                print(self.arrProfileName)
                self.pageTableView.reloadData()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

extension PagesViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrProfileName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PagesTableViewCell = pageTableView.dequeueReusableCell(withIdentifier: "PagesTableViewCell", for: indexPath) as! PagesTableViewCell
        cell.post.image = UIImage(named: arrImage[indexPath.row])
        cell.profileName.text = "\(arrProfileName[indexPath.row].sentiment)"
//        cell.followers.text = "\(arrProfileName[indexPath.row].no_of_comments) Connections"
        cell.followers.text = "\(arrProfileName[indexPath.row].no_of_comments)"
        cell.layer.borderWidth = 1
        return cell
    }
}


struct UserDetails: Decodable {
    var sentiment: String
    var no_of_comments: Int
}
