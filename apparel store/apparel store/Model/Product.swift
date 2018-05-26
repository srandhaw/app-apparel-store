//
//  Product.swift
//  apparel store
//
//  Created by Sehajbir Randhawa on 5/24/18.
//  Copyright © 2018 Sehajbir. All rights reserved.
//

import Foundation
struct ProductData {
    private(set) public var price: String!
    private(set) public var title: String!
    private(set) public var imageName: String!
    
    init(price: String,title: String,imageName: String) {
        self.price = price
        self.title = title
        self.imageName = imageName
    }
}
