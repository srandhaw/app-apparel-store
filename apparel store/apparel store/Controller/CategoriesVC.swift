//
//  ViewController.swift
//  apparel store
//
//  Created by Sehajbir Randhawa on 5/22/18.
//  Copyright © 2018 Sehajbir. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    

    @IBOutlet weak var categoryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTableView.dataSource = self
        categoryTableView.delegate = self
        categoryTableView.rowHeight = 180
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getData().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category1 = DataService.instance.getData()[indexPath.row]
            cell.updateViews(category: category1)
            return cell
        }else{
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cat = DataService.instance.getData()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: cat)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC{
            productsVC.category = sender as! CategoryData
            var bbtn = UIBarButtonItem()
            bbtn.title = ""
            navigationItem.backBarButtonItem = bbtn
        }
    }


}

