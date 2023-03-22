//
//  FakeRequest.swift
//  FakeProduct
//
//  Created by suraj kumar on 22/03/23.
//

import Foundation

/// API Request class
final class FakeRequest {

    /// Base Url
    private struct Constant {
        static let baseUrl = "https://fakestoreapi.com/"
    }
    
    private let endPoint: FackProductEndPoint
    private let pathComponents: [String]
    private let queryParameters: [URLQueryItem]
    
    
    /// Constrcut the url
    private var urlString: String {
        var urlValue = Constant.baseUrl
        
        urlValue += endPoint.rawValue
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                urlValue += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            urlValue += "?"
            let arguementString = queryParameters.compactMap({
                return "\($0.name)=\($0.value ?? "")"
            }).joined(separator: "&")
            urlValue += arguementString
        }
        return urlValue
    }
    
    
    public let httpMethod = FakeHTTPMethod.RawValue()
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    
    /// fake product app
    /// - Parameters:
    ///   - endPoint: crud end point
    ///   - pathComponents: nil
    ///   - queryParameters: nil
    public init(endPoint: FackProductEndPoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endPoint = endPoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
