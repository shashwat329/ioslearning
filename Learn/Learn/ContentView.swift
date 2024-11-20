//
//  ContentView.swift
//  Learn
//
//  Created by shashwat singh on 12/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var Count: Int = 0
    var body: some View {
        VStack {
            Text("\(Count)")
                .font(.largeTitle)
            Button("increment") {
                Count = Count+1
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
