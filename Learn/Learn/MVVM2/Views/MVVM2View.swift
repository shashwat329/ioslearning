//
//  MVVM2View.swift
//  Learn
//
//  Created by shashwat singh on 17/12/24.
//

import SwiftUI

struct MVVM2View: View {
    @State private var products: [Product2] = []
    let webservice = webService2()
    func fetchProducts()async{
        do{
            products = try await webservice.getData()
        }
        catch{
            print("there is an error")
        }
         
    }
    var body: some View {
        VStack{
            List(products){ product in
                Text(product.title)
            }
            .task{
                await fetchProducts()
            }
        }
    }
}

#Preview {
    MVVM2View()
}
