//
//  a.swift
//  Task #1
//
//  Created by Batyr Tolkynbayev on 13.06.2023.
//

import UIKit

class ProductView: UIViewController {
    
    var mainLabel: String?
    var productImageName: String?
    
    //@IBOutlet weak var mainTitle: UILabel!
    //@IBOutlet weak var addToCartButton: UIButton!
    //@IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var addToCartButton: UIButton!
    @IBOutlet weak var productImage: UIImageView!
    
    
    override func viewDidLoad() {
        mainTitle.text = mainLabel
        productImage.image = UIImage(named: productImageName!)
    }
}
