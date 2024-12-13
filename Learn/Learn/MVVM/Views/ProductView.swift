//
//  ProductView.swift
//  Learn
//
//  Created by shashwat singh on 13/12/24.
//

import SwiftUI

struct ProductView: View {
    @StateObject private var vm = ProductDetailsViewModel(webservice: Webservices())
    var body: some View {
        List(vm.products){product in
            Text(product.title)
        }
        .task{
            do{
                await vm.populateProductDetails()
            }
        }
    }
}

#Preview {
    ProductView()
}
