//
//  ShowAllViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 16/03/23.
//

import UIKit

struct ShowAllDetails {
    var profileName: String
    var area: String
    var dpRelated: String
}

class ShowAllViewController: UIViewController {

    @IBOutlet weak var showAllTableView: UITableView!
    
    var arrImage: [String] = ["homepost1","homepost2","homepost3","homepost4","homepost5","homepost6","homepost7","homepost8"]
    var arrProfileName: [String] = ["Ayush Kakdiya","Kamo","Apple","red & White Multimidia Education","infosys","Narendra Modi","Elon Musk","Amazon"]
    var arrArea: [String] = ["Surat, Gujarat","Surat, Gujarat","California, Uk","Surat, Gujarat","Bangaluru, Karnataka","Hyderabad, Telangana","Canada, Uk","Surat, Gjarat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
        
    }
    
    func registerNib() {
        showAllTableView.register(UINib(nibName: "ShowAllTableViewCell", bundle: nil), forCellReuseIdentifier: "ShowAllTableViewCell")
    }

}


extension ShowAllViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrArea.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ShowAllTableViewCell = showAllTableView.dequeueReusableCell(withIdentifier: "ShowAllTableViewCell", for: indexPath) as! ShowAllTableViewCell
        cell.profileName.text = "\(arrProfileName[indexPath.row])"
        cell.profileDp.image = UIImage(named: arrImage[indexPath.row])
        cell.area.text = "\(arrArea[indexPath.row])"
        return cell
    }
    
    
}
