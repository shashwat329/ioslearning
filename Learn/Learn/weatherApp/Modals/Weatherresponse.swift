//
//  weatherresponse.swift
//  Learn
//
//  Created by shashwat singh on 19/11/24.
//

import Foundation

struct Weatherresponse: Decodable {
    let main: Weather
}
struct Weather : Decodable {
    let temp: Double
}
