//
//  EventViewController.swift
//  Linkedin
//
//  Created by Ayush kakdiya on 06/03/23.
//

import UIKit

struct Event {
    var poster: UIImage
    var dateAndTime: String
    var componyName: String
    var discription: String
    var joinButton: UIButton
}

class EventViewController: UIViewController {
    
    @IBOutlet weak var eventCollectionView: UICollectionView!
    
    
    
    
    var arrImage: [String] = ["poster1","poster2","poster3","poster4","poster5","poster6"]
    var arrDateAndTime: [String] = ["thu, Mar 16, 8:30 PM","fri, Mar 17, 2:30 PM","fri, Mar 17, 9:00 PM","Mon, Mar 20, 11:30 PM","Mon, Mar 20, 7:30 PM","fri, Mar 17, 2:30 PM"]
    var arrName: [String] = ["The Future of Woek: Reinventing Productivity with AI","Navigating Employee Welbieing in 2023","MACHINE LEARNING IN CHEMOINFORMATICS & DRUG DISCOVERY","Project Manager & Business Analyst Collabortion","PETREL SOFTWARE TRAININGG","Lean UX & Forever Employable with jeff Gothelf"]
    var arrDescription: [String] = ["28660 attendees","2453 attendees","6253 attendees","6282 attendees","26388 attendees","6272 attendees"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        register()
    }
    
    func register() {
        eventCollectionView.register(UINib(nibName: "EventsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
    }
}

extension EventViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: EventsCollectionViewCell = eventCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! EventsCollectionViewCell
        cell.poster.image =  UIImage(named: arrImage[indexPath.row])
        cell.dateAndTime.text = "\(arrDateAndTime[indexPath.row])"
        cell.componyName.text = "\(arrName[indexPath.row])"
        cell.discription.text = "\(arrDescription[indexPath.row])"
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 15
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.lightGray.cgColor
        return cell
    }
    
    
}
