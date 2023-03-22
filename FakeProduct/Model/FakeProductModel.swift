//
//  fakeGetModel.swift
//  FakeProduct
//
//  Created by suraj kumar on 22/03/23.
//

import Foundation

struct FakeProductModel: Codable {
    let id: Int?
    let title: String?
    let price: Double?
//    let description: Category?
    let category: String?
    let image: String?
    let rating: Rating?
}

enum Category: String, Codable {
    case electronics = "electronics"
    case jewelery = "jewelery"
    case menSClothing = "men's clothing"
    case womenSClothing = "women's clothing"
}
struct Rating: Codable {
    let rate: Double?
    let count: Int?
}
