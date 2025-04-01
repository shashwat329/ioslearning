//
//  ContentView.swift
//  Eshopiefy
//
//  Created by shashwat singh on 28/03/25.
//

import SwiftUI

struct ContentView: View {
    let cols = [GridItem(.adaptive(minimum: 120))]
    @State private var isBlinking = false
    var body: some View {
        ScrollView{
            LazyVGrid(columns: cols) {
                ForEach(0..<20,id: \.self){_ in
                    Button(action: {
                        isBlinking = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                            isBlinking = false
                        }
                    }){
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue.gradient)
                            .frame(height: 200)
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
