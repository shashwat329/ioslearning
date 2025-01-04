//
//  CoffeeModel.swift
//  CoffeeApp
//
//  Created by shashwat singh on 04/01/25.
//
//this root aggrate
import Foundation

@MainActor
class CoffeeModel: ObservableObject{
    
    let webservice: WebServices
    @Published private(set) var order: [CoffeeOrder] = []
    
    init(webservice: WebServices){
        self.webservice = webservice
    }
    func populateOrder()async throws{
        order = try await webservice.getOrder()
    }
}
