//
//  JobsViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 16/03/23.
//

import UIKit

struct JobDetail {
    var profileName: String
    var area: String
}

class JobsViewController: UIViewController {

    @IBOutlet weak var myJobsButton: UIButton!
    @IBOutlet weak var postAJobButton: UIButton!
    @IBOutlet weak var recommendedTableView: UITableView!
    @IBOutlet weak var showAllButton: UIButton!
    @IBOutlet weak var moreJobsTableView: UITableView!
    
    
    var arrImage: [String] = ["homedp1","homedp2","homedp3"]
    var arrProfileName: [String] = ["Ayush Kakdiya","Kamo","Apple"]
    var arrArea: [String] = ["Surat, Gujarat","Surat, Gujarat","California, Uk"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerNib()
    }
    
    
    @IBAction func myJobsButtonAction(_ sender: UIButton) {
        let storuBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myJobsViewController: MyJobsViewController = storuBoard.instantiateViewController(identifier: "MyJobsViewController") as! MyJobsViewController
        self.navigationController?.pushViewController(myJobsViewController, animated: true)
    }
    
    
    @IBAction func postAJobsButtonAction(_ sender: UIButton) {
        let storuBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let postAJobViewController: PostAJobViewController = storuBoard.instantiateViewController(identifier: "PostAJobViewController") as! PostAJobViewController
        self.navigationController?.pushViewController(postAJobViewController, animated: true)
    }
    
    @IBAction func showAllButtonAction(_ sender: UIButton) {
        let storuBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let showAllViewController: ShowAllViewController = storuBoard.instantiateViewController(identifier: "ShowAllViewController") as! ShowAllViewController
        self.navigationController?.pushViewController(showAllViewController, animated: true)
    }
    
    func registerNib() {
        recommendedTableView.register(UINib(nibName: "RecommendedTableViewCell", bundle: nil), forCellReuseIdentifier: "RecommendedTableViewCell")
    }
}

extension JobsViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
         return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: RecommendedTableViewCell = recommendedTableView.dequeueReusableCell(withIdentifier: "RecommendedTableViewCell", for: indexPath) as! RecommendedTableViewCell
        cell.profileName.text = "\(arrProfileName[indexPath.row])"
        cell.profileDp.image = UIImage(named: arrImage[indexPath.row])
        cell.area.text = "\(arrArea[indexPath.row])"
        return cell
    }
    
    
}

