//
//  FruitViewController.swift
//  Demo2
//
//  Created by Sean McCarthy on 12/4/17.
//  Copyright © 2017 Sean McCarthy. All rights reserved.
//

import UIKit

class FruitViewController: UIViewController , UITableViewDataSource, UISearchBarDelegate {
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var tableView: UITableView!
    let data = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry", "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit", "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango", "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach", "Pear", "Pineapple", "Raspberry", "Strawberry"]
    
    var filteredData: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        searchBar.delegate = self
        filteredData = data
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = filteredData[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }
    
    // This method updates filteredData based on the text in the Search Box
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        // When there is no text, filteredData is the same as the original data
        // When user has entered text into the search box
        // Use the filter method to iterate over all items in the data array
        // For each item, return true if the item should be included and false if the
        // item should NOT be included
        filteredData = searchText.isEmpty ? data : data.filter { (item: String) -> Bool in
            // If dataItem matches the searchText, return true to include it
            return item.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
        }
        
        tableView.reloadData()
    }
}
