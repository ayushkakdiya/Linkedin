//
//  FocusedViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 10/03/23.
//

import UIKit
import Alamofire

struct Focuse: Decodable{
    var profileName: String
    var message: String
    var date: String
}

class FocusedViewController: UIViewController {
    
    @IBOutlet weak var messageTableView: UITableView!
    
    var arrData: ApiCll!
    var arrProfileName: [Data] = []
    var arrImage: [String] = ["homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        register()
        apiCalling()
    }
    
    func register() {
        messageTableView.register(UINib(nibName: "FocusedTableViewCell", bundle: nil), forCellReuseIdentifier: "FocusedTableViewCell")
        messageTableView.delegate = self
        messageTableView.dataSource = self
        messageTableView.separatorStyle = .none
    }
    
    
    func apiCalling() {
        AF.request("https://reqres.in/api/users?page=2"/*,method: .get*/).responseData { [self]
            response in
            debugPrint(response)
            guard let apiData = response.data else { return }
            do {
                arrData = try JSONDecoder().decode(ApiCll.self, from: apiData)
                arrProfileName = self.arrData.data
                messageTableView.reloadData()
            } catch {
                print("error")
            }
        }
    }
}

extension FocusedViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrProfileName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: FocusedTableViewCell = messageTableView.dequeueReusableCell(withIdentifier: "FocusedTableViewCell", for: indexPath) as! FocusedTableViewCell
        cell.post.image = UIImage(named: arrImage[indexPath.row])
        cell.profileName.text = "\(arrProfileName[indexPath.row].first_name)"
        cell.message.text = "\(arrProfileName[indexPath.row].last_name)"
        cell.date.text = "\(arrProfileName[indexPath.row].email)"
        cell.layer.borderWidth = 0.5
        return cell
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
struct ApiCll: Decodable{
    var page: Int
    var per_page: Int
    var total: Int
    var total_pages: Int
    var data: [Data]
}

struct Data: Decodable{
    var id: Int
    var email: String
    var first_name: String
    var last_name: String
    var avatar: String
}
