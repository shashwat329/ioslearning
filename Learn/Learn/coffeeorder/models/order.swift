//
//  order.swift
//  Learn
//
//  Created by shashwat singh on 29/12/24.
//

import Foundation

enum CoffeeSize: String, Codable,CaseIterable{
    case small
    case medium
    case large
}

struct CoffeeOrder: Decodable,Identifiable,Hashable{
    var id: Int?
    var name: String
    var coffeename : String
    var total: Double
    var size: CoffeeSize
}
