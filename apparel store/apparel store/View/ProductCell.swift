//
//  ProductCell.swift
//  apparel store
//
//  Created by Sehajbir Randhawa on 5/24/18.
//  Copyright © 2018 Sehajbir. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {

    @IBOutlet weak var ProductPrice: UILabel!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func update(product: ProductData){
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        ProductPrice.text = product.price
    }

   

}
