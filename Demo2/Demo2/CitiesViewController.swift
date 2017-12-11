//
//  CitiesViewController.swift
//  Demo2
//
//  Created by Sean McCarthy on 12/4/17.
//  Copyright © 2017 Sean McCarthy. All rights reserved.
//

import UIKit

class CitiesViewController: UIViewController, UITableViewDataSource {

    /*
        */
 
 
 
    @IBOutlet weak var tableView: UITableView!
    let data = ["New York, NY", "Los Angeles, CA", "Chicago, IL", "Houston, TX",
                "Philadelphia, PA", "Phoenix, AZ", "San Diego, CA", "San Antonio, TX",
                "Dallas, TX", "Detroit, MI", "San Jose, CA", "Indianapolis, IN",
                "Jacksonville, FL", "San Francisco, CA", "Columbus, OH", "Austin, TX",
                "Memphis, TN", "Baltimore, MD", "Charlotte, ND", "Fort Worth, TX"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "com.codepath.DemoPrototypeCell", for: indexPath) as! DemoPrototypeCell
        let cityState = data[indexPath.row].components(separatedBy: ", ")
        cell.cityLabel.text = cityState.first
        cell.stateLabel.text = cityState.last
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

}
