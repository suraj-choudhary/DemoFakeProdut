//
//  ProduListViewModel.swift
//  FakeProduct
//
//  Created by suraj kumar on 22/03/23.
//

import Foundation
import UIKit
struct ProductListViewModel {
    public func fetchProdut() {
        FakeProductservice.shared.fakeExecute(.produtList, expectingType: FakeProductModel.self) { result in
            switch result {
            case .success(let data):
                print([data])
            case .failure(let failure):
                break
            }
        }
    }
}



