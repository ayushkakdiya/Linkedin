//
//  ManageMyNetworkViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 13/03/23.
//

import UIKit

class ManageMyNetworkViewController: UIViewController {

    @IBOutlet weak var connectionButton: UIButton!
    @IBOutlet weak var iFollowButton: UIButton!
    @IBOutlet weak var pagesButton: UIButton!
    @IBOutlet weak var eventsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    


    @IBAction func connectionButtonAction(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let connectionsViewController = storyboard!.instantiateViewController(identifier: "ConnectionsViewController") as! ConnectionsViewController
        self.navigationController?.pushViewController(connectionsViewController, animated: true)
    }
    
    
    
    @IBAction func iFollowButtonButton(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let pepoleIFollowViewController: PepoleIFollowViewController = storyboard?.instantiateViewController(identifier: "PepoleIFollowViewController") as! PepoleIFollowViewController
        self.navigationController?.pushViewController(pepoleIFollowViewController, animated: true)
    }
    
    
    @IBAction func pagesButtonAction(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let pagesViewController: PagesViewController = storyboard?.instantiateViewController(identifier: "PagesViewController") as! PagesViewController
        self.navigationController?.pushViewController(pagesViewController, animated: true)
    }
    
   
    @IBAction func eventsButtonAction(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let eventsViewController: EventsViewController = storyboard?.instantiateViewController(identifier: "EventsViewController") as! EventsViewController
        self.navigationController?.pushViewController(eventsViewController, animated: true)
    }
    
    
    
}
