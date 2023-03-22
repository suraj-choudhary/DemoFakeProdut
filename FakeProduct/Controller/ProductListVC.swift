//
//  ViewController.swift
//  FakeProduct
//
//  Created by suraj kumar on 22/03/23.
//

import UIKit
import SwiftUI
/// Produt List Controller
class ProductListVC: UITableViewController {
    var productViewModel = ProductListViewModel()
    var dummyData: [FakeProductModel]?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(FakeListTableCell.self, forCellReuseIdentifier: "cell")
    }
    override func viewWillAppear(_ animated: Bool) {
        productViewModel.fetchProdut { data in
            self.dummyData = data
            DispatchQueue.main.async {
                self.tableView.reloadData()

            }
        }
    }
}
//extension of product list
extension ProductListVC {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyData?.count ?? 0
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? FakeListTableCell else {
            fatalError()
        }
        let url = dummyData?[indexPath.row].image
        let viewModel = CharacterCellViewModel(characterImageUrl: URL(string: url!))
        viewModel.fetchImage { result in
            switch result {
            case .success(let data):
                DispatchQueue.main.async {
                    let image = UIImage(data: data)
                    cell.produtImageView.image = image
                }
                
            case .failure(let failure):
                break
            }
        }
        cell.productName.text = dummyData?[indexPath.row].title?.capitalized
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let maineView = MYProductPage(name: "")
        let vc = UIHostingController(rootView: maineView)
        
        present(vc, animated: true)
//        print(dummyData![indexPath.row])
        
    }
}
