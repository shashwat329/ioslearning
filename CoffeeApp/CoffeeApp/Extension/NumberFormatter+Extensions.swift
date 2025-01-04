//
//  NumberFormatter+Extensions.swift
//  CoffeeApp
//
//  Created by shashwat singh on 04/01/25.
//

import Foundation
extension NumberFormatter {
   static var currency: NumberFormatter {
        let formatter = NumberFormatter()
       
       formatter.numberStyle = .currency
       return formatter 
    }
}
