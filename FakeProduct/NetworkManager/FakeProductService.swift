//
//  FakeProductService.swift
//  FakeProduct
//
//  Created by suraj kumar on 22/03/23.
//

import Foundation

/// Fake produt Product API service class
final class FakeProductservice {
    
    static let shared = FakeProductservice()
    
    private init() {}
    
    /// Error type
    enum FakeSeriveError: Error {
        case failedToCreateRequest
        case failedToCreateprodut
        case failedToGetProdut
    }
    
    
    /// Send
    /// - Parameters:
    ///   - request: fake request
    ///   - type: t ype
    ///   - completion: get back to data
    func fakeExecute<T: Codable>(_ request: FakeRequest, expectingType type: T.Type, completion: @escaping(Result<T, Error>) -> Void) {
        
        
        guard let fakeUrlRequest = requestApi(from: request) else {
            completion(.failure(FakeSeriveError.failedToCreateRequest))
            return
        }
        let apiTask = URLSession.shared.dataTask(with: fakeUrlRequest) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(.failure(FakeSeriveError.failedToGetProdut))
                return
            }
            //convert data in to codable
            do {

                let fakeResult = try JSONDecoder().decode(type.self, from: data)
                completion(.success(fakeResult))
            } catch {
                completion(.failure(error))
            }
            
        }
        apiTask.resume()
        
    }
    /// To Create Fake Requet
    /// - Parameter fakeRequest: need reqest type
    /// - Returns: return the url request
    private func requestApi(from fakeRequest: FakeRequest) -> URLRequest? {
        guard let fakePoductURL =  fakeRequest.url else {
            return nil
        }
        var request = URLRequest(url: fakePoductURL)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = fakeRequest.httpMethod
        return request
        
    }
}


extension FakeRequest {
    static let produtList = FakeRequest(endPoint: .products)
}
