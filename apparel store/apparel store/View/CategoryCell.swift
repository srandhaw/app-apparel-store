//
//  CategoryCell.swift
//  apparel store
//
//  Created by Sehajbir Randhawa on 5/22/18.
//  Copyright © 2018 Sehajbir. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
  
    @IBOutlet weak var categoryBackground: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: CategoryData){
    categoryTitle.text = category.title!
   categoryBackground.image = UIImage(named: category.image)
    }
}
