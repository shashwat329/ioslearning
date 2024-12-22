//
//  ProductListVm.swift
//  Learn
//
//  Created by shashwat singh on 19/12/24.
//

import Foundation

class ProductlistVm: ObservableObject{
    @Published var products: [ProductViewModel2] = []
    
    let webservice: webService2
    init(webservice: webService2) {
        self.webservice = webservice
    }
    func populateproducts() async {
        do{
            let products = try await webservice.getData()
            self.products = products.map(ProductViewModel2.init)
        }
        catch{
            print(error)
        }
    }
    
    
    
}
struct ProductViewModel2: Identifiable{
    private var product: Product2
    init(product: Product2) {
        self.product = product
    }
    var id: Int{
        product.id
    }
    var title: String{
        product.title
    }
    var description: String{
        product.description
    }
}
