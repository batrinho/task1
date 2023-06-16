//
//  ViewController.swift
//  Task #1
//
//  Created by Batyr Tolkynbayev on 13.06.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    let productsArray = ["a", "b", "c", "d"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
        cell.textLabel?.text = productsArray[indexPath.row]
        return cell
    }

}

