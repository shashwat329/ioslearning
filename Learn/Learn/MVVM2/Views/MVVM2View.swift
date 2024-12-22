//
//  MVVM2View.swift
//  Learn
//
//  Created by shashwat singh on 17/12/24.
//

import SwiftUI

struct MVVM2View: View {
    @StateObject private var vm = ProductlistVm(webservice: webService2());
    var body: some View {
        VStack{
            List(vm.products){ product in
                Text(product.title)
            }
            .task{
                await vm.populateproducts()
            }
        }
    }
}

#Preview {
    MVVM2View()
}
