//
//  ProductsVC.swift
//  apparel store
//
//  Created by Sehajbir Randhawa on 5/27/18.
//  Copyright © 2018 Sehajbir. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
   
    
    
    @IBOutlet weak var productsCollectionView: UICollectionView!
    
    var category: CategoryData!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = category.title
        productsCollectionView.dataSource = self
        productsCollectionView.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataService.instance.getProducts(title: category.title).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell  = productsCollectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product1 = DataService.instance.getProducts(title: category.title)[indexPath.row]
            cell.update(product: product1)
            return cell
            
        } else{
            return ProductCell()
        }
        
    }

   

}
