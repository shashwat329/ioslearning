//
//  WebServices.swift
//  CoffeeApp
//
//  Created by shashwat singh on 31/12/24.
//

import Foundation
enum NetworkError: Error{
    case invalidurl
    case invalidResponse
    case invalidData
}
class WebServices {
    func getOrder() async throws -> [CoffeeOrder]{
        guard let url = URL(string: "https://island-bramble.glitch.me/orders") else {
            throw NetworkError.invalidurl
        }
        let (data ,response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse , response.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
//        print("Raw JSON data:", String(data: data, encoding: .utf8) ?? "Invalid JSON")
        guard let orders = try? JSONDecoder().decode([CoffeeOrder].self , from: data) else {
            throw NetworkError.invalidData
        }
        return orders
    }
}
