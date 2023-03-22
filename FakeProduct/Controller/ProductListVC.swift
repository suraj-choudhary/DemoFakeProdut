//
//  ViewController.swift
//  FakeProduct
//
//  Created by suraj kumar on 22/03/23.
//

import UIKit
/// Produt List Controller
class ProductListVC: UITableViewController {
    
    var productViewModel = ProductListViewModel()
    var dummyData: [FakeProductModel]?
    override func viewDidLoad() {
        super.viewDidLoad()
        

        productViewModel.fetchProdut()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    
}




//extension of product list
extension ProductListVC {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyData?.count ?? 0
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "Product List"
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
}
