//
//  DataService.swift
//  apparel store
//
//  Created by Sehajbir Randhawa on 5/23/18.
//  Copyright © 2018 Sehajbir. All rights reserved.
//

import Foundation

class DataService{
    static let instance = DataService()
    
    var categories: [CategoryData] = [ CategoryData(title: "SHIRTS", image: "shirts.png"),
                                       CategoryData(title: "HOODIES", image: "hoodies.png"),
                                       CategoryData(title: "HATS", image: "hats.png"),
                                       CategoryData(title: "DIGITAL", image: "digital.png")
    ]
    
    func getData()->[CategoryData]{
        return categories
    }
}
