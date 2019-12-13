//
//  ListTableVC.swift
//  Project4
//
//  Created by appinventiv on 28/11/19.
//  Copyright © 2019 a. All rights reserved.
//

import UIKit

class ListTableVC: UITableViewController {
    
    var websites = ["apple.com", "hackingwithswift.com"]


    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return websites.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellLink", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let screen = storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        {
            screen.firstSite = websites[indexPath.row]
            navigationController?.pushViewController(screen, animated: true)
        }
    }

}
