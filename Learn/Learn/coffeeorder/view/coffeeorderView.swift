//
//  coffeeorderView.swift
//  Learn
//
//  Created by shashwat singh on 29/12/24.
//

import SwiftUI

struct coffeeorderView: View {
    @EnvironmentObject private var model: CoffeeModel
    private func populateorder() async {
        do{
            try await model.populateOrder()
        }
        catch{
            print(error) 
        }
    }
    var body: some View {
        VStack{
            List(model.orders){ order in
                Text(order.name)
            }
        }.task{
            await populateorder()
        }
    }
}

#Preview {
    coffeeorderView().environmentObject(CoffeeModel(webservice: WebServices()))
}
