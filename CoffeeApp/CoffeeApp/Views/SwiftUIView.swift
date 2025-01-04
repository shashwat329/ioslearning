//
//  SwiftUIView.swift
//  CoffeeApp
//
//  Created by shashwat singh on 04/01/25.
//

import SwiftUI

struct OrderCellView: View{
    let order: CoffeeOrder
    var body: some View{
        HStack{
            VStack(alignment: .leading){
                Text(order.name).accessibilityIdentifier("order name")
                    .bold()
                Text("\(order.coffeeName)(\(order.size.rawValue))").accessibilityIdentifier("coffee details")
                    .opacity(0.5)
            }
            Spacer()
            Text(order.total as NSNumber,formatter: NumberFormatter.currency).accessibilityIdentifier("order total amount")
        }
    }
}


//#Preview {
//    OrderCellView(order: CoffeeOrder)
//}
