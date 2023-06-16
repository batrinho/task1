//
//  ViewController.swift
//  Task #1
//
//  Created by Batyr Tolkynbayev on 13.06.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    let productsArray = ["1907 Wall Set", "1921 Dial Phone", "1937 Desk Set", "1984 Moto Portable"]
    
    var wallSet: Bool = false
    var dialPhone: Bool = false
    var deskSet: Bool = false
    var motoPortable: Bool = false

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "Product", bundle: nil), forCellReuseIdentifier: "ReusableCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! Product
        let productName = productsArray[indexPath.row]
        cell.productLabel.text = productName
        switch productName {
        case "1907 Wall Set":
            cell.productImage.image = UIImage(named: "big-ben (1).png")
        case "1921 Dial Phone":
            cell.productImage.image = UIImage(named: "phone.png")
        case "1937 Desk Set":
            cell.productImage.image = UIImage(named: "telephone.png")
        case "1984 Moto Portable":
            cell.productImage.image = UIImage(named: "phone-receiver.png")
        default:
            print("brah")
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let productName = productsArray[indexPath.row]
        
        switch productName {
        case "1907 Wall Set": wallSet = true
        case "1921 Dial Phone": dialPhone = true
        case "1937 Desk Set": deskSet = true
        case "1984 Moto Portable": motoPortable = true
        default:
            print("bruh")
        }
        
        self.performSegue(withIdentifier: "fromTabletoProduct", sender: AnyObject.self)
        wallSet = false
        dialPhone = false
        deskSet = false
        motoPortable = false
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let segueName = segue.identifier
        if segueName == "fromTabletoProduct" {
            let destinationVC = segue.destination as! ProductView
            if wallSet {
                destinationVC.mainLabel = "1907 Wall Set"
                destinationVC.productImageName = "big-ben (1).png"
            }
            else if dialPhone {
                destinationVC.mainLabel = "1921 Dial Phone"
                destinationVC.productImageName = "phone.png"
            }
            else if deskSet {
                destinationVC.mainLabel = "1937 Desk Set"
                destinationVC.productImageName = "telephone.png"
            }
            else if motoPortable {
                destinationVC.mainLabel = "1984 Moto Portable"
                destinationVC.productImageName = "phone-receiver.png"
            }
        }
    }
    
}

