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
    
    var hats: [ProductData] = [
        ProductData(price: "$18", title: "Graphic Beanie", imageName: "hat01.png"),
        ProductData(price: "$22", title: "Hat Black", imageName: "hat02.png"),
        ProductData(price: "$22", title: "Hat White", imageName: "hat03.png"),
        ProductData(price: "$20", title: "Snapback", imageName: "hat04.png"),
        
    ]
    
    var hoodies: [ProductData] = [
        ProductData(price: "$32", title: "Hoodie Grey", imageName: "hoodie01.png"),
        ProductData(price: "$32", title: "Hoodie Grey", imageName: "hoodie02.png"),
        ProductData(price: "$32", title: "Hoodie Grey", imageName: "hoodie03.png"),
        
        
        ]
    
    var shirts: [ProductData] = [
        ProductData(price: "$18", title: "Shirt Black", imageName: "shirt01.png"),
        ProductData(price: "$19", title: "Shirt Light Grey", imageName: "shirt02.png"),
        ProductData(price: "$18", title: "Shirt Red", imageName: "shirt03.png"),
        ProductData(price: "$18", title: "Hustle Delegate Grey", imageName: "shirt04.png"),
        ProductData(price: "$18", title: "Kickflip Studios Black", imageName: "shirt05.png")
            
        
    ]
    
    var digitalGoods: [ProductData] = [ProductData]()
    
    func getProducts(title: String)->[ProductData]{
        switch title{
        case "SHIRTS":
            return shirts
        case "HATS":
            return hats
        case "HOODIES":
            return hoodies
        case "DIGITAL":
            return digitalGoods
        default:
            return shirts
        }
        }
    
    
    func getData()->[CategoryData]{
        return categories
    }
}
