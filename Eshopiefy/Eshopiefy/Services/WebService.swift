//
//  WebService.swift
//  Eshopiefy
//
//  Created by shashwat singh on 28/03/25.
//

import Foundation
enum NetworkError: Error {
    case badUrl
    case badResponse
    case badData
}
class WebService {
    func fetchProducts() async throws -> [Product] {
        guard let url = URL(string: baseURL + "products")else{
            throw NetworkError.badUrl
        }
        
        let (data,response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,httpResponse.statusCode == 200 else {
            throw NetworkError.badResponse
        }
        
        guard let productsData = try? JSONDecoder().decode([Product].self, from: data)else{
            throw NetworkError.badData
        }
        return productsData
    }
}

