//
//  webServices3.swift
//  Learn
//
//  Created by shashwat singh on 23/12/24.
//

import Foundation
enum NewtworkError3: Error{
    case badURL
    case badResponse
}
class webservices3{
    func getProducts() async throws -> [Product3]{
        guard let url = URL(string: "https://fakestoreapi.com/products")
        else{
            throw NewtworkError3.badURL
        }
        let (data,response) = try await URLSession.shared.data(from: url)
        guard let httpresponse = response as? HTTPURLResponse, httpresponse.statusCode == 200 else{
            throw NewtworkError3.badResponse
        }
        let products3 = try JSONDecoder().decode([Product3].self, from: data)
        return products3
    }
}
