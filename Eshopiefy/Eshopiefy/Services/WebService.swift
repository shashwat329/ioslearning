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
        if let url = URL(string: (baseURL + Endpoint. )) {
            print(url)
            
        }
    }
}
