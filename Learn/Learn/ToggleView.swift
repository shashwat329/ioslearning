//
//  SwiftUIView.swift
//  Learn
//
//  Created by shashwat singh on 13/11/24.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var darkMode:Bool = false;
    var body: some View {
        ZStack{
            Color(darkMode ? .black: .white).ignoresSafeArea(.all)
            VStack{
                Toggle(isOn: $darkMode) {
                    Text(darkMode ? "ON": "OFF")
                        .foregroundStyle(darkMode ? .white: .black)
                }.fixedSize()
            }
        }
    }
}

#Preview {
    SwiftUIView()
}
