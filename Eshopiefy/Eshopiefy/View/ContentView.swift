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
        ScrollView{
            Text("All products")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            LazyVGrid(columns: cols) {
                Section{
                    ForEach(0..<20,id: \.self){_ in
                        Button(action: {
                          print("button pressed")
                        }){
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.blue.gradient)
                                .frame(height: 200)
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
