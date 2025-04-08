//
//  ContentView.swift
//  Eshopiefy
//
//  Created by shashwat singh on 28/03/25.
//

import SwiftUI

struct ContentView: View {
    let cols = [GridItem(.adaptive(minimum: 120))]
    @State private var isfav = false
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                Text("All products")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                LazyVGrid(columns: cols) {
                    Section{
                        ForEach(0..<20,id: \.self){ id in
                            NavigationLink(destination: DetailedView()){
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.gray.gradient.opacity(0.1))
                                        .frame(height: 200)
                                    VStack{
                                        Image(systemName: "bag")
                                            .resizable()
                                            .frame(width: 80, height: 80)
                                        Text("Product name")
                                            .font(.caption)
                                    }
                                }
                            }
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
