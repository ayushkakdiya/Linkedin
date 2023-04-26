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
    @IBOutlet weak var hiringTableView: UITableView!
    
    var arrImage: [String] = ["homedp1","homedp2","homedp3"]
    var arrProfileName: [String] = ["Ayush Kakdiya","Kamo","Apple"]
    var arrArea: [String] = ["Surat, Gujarat","Surat, Gujarat","California, Uk"]
    var arrImage2: [String] = ["homedp1","homedp2","homedp3","homedp4","homedp5","homedp6","homedp7","homedp8"]
    var arrProfileName2: [String] = ["Ayush Kakdiya","Kamo","Apple","red & White Multimidia Education","infosys","Narendra Modi","Elon Musk","Amazon"]
    var arrArea2: [String] = ["Surat, Gujarat","Surat, Gujarat","California, Uk","Surat, Gujarat","Mumbai, Maharastra","Delhi, India", "London, Uk","Canada, Uk"]
    var arrJob: [String] = ["Video Editor","2D Game Artist","Video Editor","Front end Devloper","iOS Devloper","Back end Devloper","Video Editor","Animator"]
    
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
        hiringTableView.register(UINib(nibName: "MoreJobTableViewCell", bundle: nil), forCellReuseIdentifier: "MoreJobTableViewCell")
    }
}

extension JobsViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int { return 1 }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.recommendedTableView {
            return arrImage.count
        } else {
            return arrImage2.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == self.recommendedTableView{
            let cell: RecommendedTableViewCell = recommendedTableView.dequeueReusableCell(withIdentifier: "RecommendedTableViewCell", for: indexPath) as! RecommendedTableViewCell
            cell.profileName.text = "\(arrProfileName[indexPath.row])"
            cell.profileDp.image = UIImage(named: arrImage[indexPath.row])
            cell.area.text = "\(arrArea[indexPath.row])"
            return cell
        } else {
            let cells: MoreJobTableViewCell = hiringTableView.dequeueReusableCell(withIdentifier: "MoreJobTableViewCell", for: indexPath) as! MoreJobTableViewCell
            cells.profileDp.image = UIImage(named: arrImage2[indexPath.row])
            cells.area.text = "\(arrArea2[indexPath.row])"
            cells.omponyName.text = "\(arrProfileName2[indexPath.row])"
            cells.jobTopic.text = "\(arrJob[indexPath.row])"
            return cells
        }
    }
}
