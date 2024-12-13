//
//  Webservices.swift
//  Learn
//
//  Created by shashwat singh on 13/12/24.
//


import Foundation

enum NetworkError: Error {
    case baddURL
    case badResponse
    case badRequest
}

class Webservices {
    func  getproductDetails() async throws -> [Product]{
        
        guard let url = URL(string: "https://fakestoreapi.com/products")//this url is the apiendpoint
        else {
           throw NetworkError.baddURL
        }
      let (request,response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else{
            throw NetworkError.badResponse
        }
        
        let products = try JSONDecoder().decode([Product].self, from: request)
        return products
        
    }
}
