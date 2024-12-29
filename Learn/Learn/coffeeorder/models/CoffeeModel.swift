//
//  CoffeeModel.swift
//  Learn
//
//  Created by shashwat singh on 29/12/24.
//

import Foundation
@MainActor
class CoffeeModel: ObservableObject {
    let webservice: WebServices
    @Published private(set) var orders: [CoffeeOrder] = []
    init(webservice: WebServices) {
        self.webservice = webservice
    }
    func populateOrder()async throws {
        orders = try await webservice.getinformation()
    }
}
 
