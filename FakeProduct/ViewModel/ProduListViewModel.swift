//
//  ProduListViewModel.swift
//  FakeProduct
//
//  Created by suraj kumar on 22/03/23.
//

import Foundation
import UIKit
class ProductListViewModel: NSObject {
    
    
    func fetchProdut(completion: @escaping([FakeProductModel]) -> Void) {
        FakeProductservice.shared.fakeExecute(.produtList, expectingType: [FakeProductModel].self) { result in
            switch result {
            case .success(let data):
                completion(data)
            case .failure(let failure):
                print(failure)
            }
        }
    }
}




