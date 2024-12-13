//
//  Product.swift
//  Learn
//
//  Created by shashwat singh on 13/12/24.
//

import Foundation

struct Product: Decodable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: String
}
