//
//  webService2.swift
//  Learn
//
//  Created by shashwat singh on 17/12/24.
//

import Foundation

enum NewtworkError2: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}
class webService2 {
    func getData() async throws-> [Product2]{
        guard let url = URL(string: "https://fakestoreapi.com/products") else {
            throw NewtworkError2.invalidURL
        }
        let (request,response) = try await URLSession.shared.data(from: url);
        guard let httpresponse = response as? HTTPURLResponse , httpresponse.statusCode == 200 else{
            throw NewtworkError2.invalidResponse
        }
        let products = try JSONDecoder().decode([Product2].self, from: request)
        return products
    }
}
