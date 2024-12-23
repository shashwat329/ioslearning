//
//  storemodel.swift
//  Learn
//
//  Created by shashwat singh on 23/12/24.
//

import Foundation

@MainActor
class storemodel: ObservableObject{
    @Published private var products3: [Product3] = []
    
    let webservice : webservices3
    init(webservices : webservices3){
        self.webservice = webservices
    }
    func popluateProducts()async throws{
        products3 = try await webservice.getProducts()
    }
}
