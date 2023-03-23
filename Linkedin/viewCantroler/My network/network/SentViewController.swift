//
//  SentViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 20/03/23.
//

import UIKit

struct SentDetails {
    var profileName: String
    var sentMonth: String
}

class SentViewController: UIViewController {

    @IBOutlet weak var sentTableView: UITableView!
    
    var arrImage: [String] = ["homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8"]
    var arrProfileName: [String] = ["Ayush Kakdiya","Kamo","Apple","red & White Multimidia Education","infosys","Narendra Modi","Elon Musk","Amazon"]
    var arrdiscription: [String] = ["Connected 3 days ago","Connected 1 days ago","Connected 5 days ago","Connected today","Connected 3 days ago","Connected 2 days ago","Connected 9 days ago","Connected 4 days ago"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
    }
    
    func registerNib() {
        sentTableView.register(UINib(nibName: "SentTableViewCell", bundle: nil), forCellReuseIdentifier: "SentTableViewCell")
    }
    
    
}

extension SentViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrProfileName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SentTableViewCell = sentTableView.dequeueReusableCell(withIdentifier: "SentTableViewCell", for: indexPath) as! SentTableViewCell
        cell.profileName.text = "\(arrProfileName[indexPath.row])"
        cell.post.image = UIImage(named: arrImage[indexPath.row])
        cell.sentMonth.text = "\(arrdiscription[indexPath.row])"
        return cell
    }
    
    
}
