//
//  ContentView.swift
//  CoffeeApp
//
//  Created by shashwat singh on 31/12/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var model: CoffeeModel
    private func populateOrder() async {
        do{
            try await model.populateOrder()
        
        }
        catch{
            print(error)
        }
    }
    var body: some View {
        VStack {
            List(model.order){ order in
                OrderCellView(order: order)
                
            }
        }.task {
            await populateOrder()
        }
    }
}

#Preview {
    ContentView().environmentObject(CoffeeModel(webservice: WebServices() ))
}
