//
//  Coffee.swift
//  CoffeeApp
//
//  Created by shashwat singh on 31/12/24.
//


import Foundation

enum CoffeeSize: String,Codable,Hashable{
    case Small
    case Medium
    case Large
}

struct CoffeeOrder: Decodable, Identifiable, Hashable{
    var id: Int?
    var name:String
    var coffeeName:String
    var total: Double
    var size: CoffeeSize
}
