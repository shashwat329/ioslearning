//
//  Hike.swift
//  Hiking
//
//  Created by shashwat singh on 07/11/24.
//

import Foundation
struct Hike:Identifiable,Hashable{
    let id = UUID()
    let photo:String
    let description:String
    let miles:Double
}
