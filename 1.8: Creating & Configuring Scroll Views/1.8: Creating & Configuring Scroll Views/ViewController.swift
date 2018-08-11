//
//  ViewController.swift
//  1.8: Creating & Configuring Scroll Views
//
//  Created by Eric Andersen on 3/31/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var batmanImages: [String] = []
    var jokerImages: [String] = []
    var ironManImages: [String] = []
    var doomImages: [String] = []
    var allImages: [[String]] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        batmanImages = ["bat1.jpg", "bat2.jpg", "bat3.jpg", "bat4.jpg", "bat5.jpg", "bat6.jpg", "bat7.jpg", "bat8.jpg"]
        jokerImages = ["jok1.jpg", "jok2.jpg", "jok3.jpg", "jok4.jpg", "jok5.jpg", "jok6.jpg", "jok7.jpg", "jok8.jpg"]
        ironManImages = ["iron1.jpg", "iron2.jpg", "iron3.jpg", "iron4.jpg", "iron5.jpg", "iron6.jpg", "iron7.jpg", "iron8.jpg"]
        doomImages = ["doom1.jpg", "doom2.jpg", "doom3.jpg", "doom4.jpg", "doom5.jpg", "doom6.jpg", "doom7.jpg", "doom8.jpg",]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Data Source Methods
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if (section == 0) {
            return "Batman"
        } else if (section == 1) {
            return "Joker"
        } else if (section == 2) {
            return "Iron Man"
        } else if (section == 3) {
            return "Dr. Doom"
        } else {
            return "NA"
        }
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! Cell
        
//        if (indexPath.section == 0) {
//            cell.backgroundColor = UIColor.red
//        } else if (indexPath.section == 1) {
//            cell.backgroundColor = UIColor.black
//        }
        
        if (indexPath.section == 0) {
            cell.images = batmanImages
        } else if (indexPath.section == 1) {
            cell.images = jokerImages
        } else if (indexPath.section == 2) {
            cell.images = ironManImages
        } else if (indexPath.section == 3) {
            cell.images = doomImages
        }
       
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
