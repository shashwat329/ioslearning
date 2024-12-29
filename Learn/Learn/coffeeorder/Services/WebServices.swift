//
//  WebServices.swift
//  Learn
//
//  Created by shashwat singh on 29/12/24.
//

import Foundation
enum NewtworkErrorCoffee: Error{
    case invalidURL
    case invalidResponse
    case invalidData
}

class WebServices{
    func getinformation()async throws  ->[CoffeeOrder]{
        guard let url = URL(string: "https://island-bramble.glitch.me/orders")
        else { throw NewtworkErrorCoffee.invalidURL }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpresponse = response as? HTTPURLResponse, httpresponse.statusCode == 200 else { throw NewtworkErrorCoffee.invalidResponse }
        guard let orders = try? JSONDecoder().decode([CoffeeOrder].self,from: data)else{
            throw NewtworkErrorCoffee.invalidData
        }
        return orders
    }
}
