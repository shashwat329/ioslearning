//
//  SecondView.swift
//  Learn
//
//  Created by shashwat singh on 16/11/24.
//

import SwiftUI

struct SecondView2: View {
    @Binding var DarkMode: Bool
    var body: some View {
        ZStack{
            VStack{
                Image(systemName: DarkMode ? "lightbulb.fill" : "lightbulb")
                    .font(.largeTitle)
                    .foregroundStyle(DarkMode ? .yellow : .black)
                Button {
                    DarkMode.toggle()
                } label: {
                    Text("Toggle")
                        .font(.largeTitle)
                }
            }
        }
    }
}
