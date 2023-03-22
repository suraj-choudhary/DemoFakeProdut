//
//  ProductCellViewModel.swift
//  FakeProduct
//
//  Created by suraj kumar on 23/03/23.
//

import Foundation
import UIKit
struct CharacterCellViewModel {
    
    private let characterImageUrl: URL?
    
    init(characterImageUrl: URL?) {
        self.characterImageUrl = characterImageUrl
    }
     
    
    public func fetchImage(completion: @escaping(Result<Data, Error>) -> Void) {
       
        guard let url = characterImageUrl else {
            return
        }
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data , error == nil else {
                return
            }
            
            completion(.success(data))
        }
        task.resume()
    }
}
