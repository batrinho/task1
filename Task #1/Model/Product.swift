//
//  Product.swift
//  Task #1
//
//  Created by Batyr Tolkynbayev on 13.06.2023.
//

import UIKit

class Product: UITableViewCell {

    @IBOutlet weak var productView: UIView!
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
