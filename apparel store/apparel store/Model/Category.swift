//
//  Category.swift
//  apparel store
//
//  Created by Sehajbir Randhawa on 5/22/18.
//  Copyright © 2018 Sehajbir. All rights reserved.
//

import Foundation

struct CategoryData {
   private(set) public var title:String!
   private(set) public var image:String!
    
    init(title: String,image: String) {
        self.title = title
        self.image = image
    }
}
