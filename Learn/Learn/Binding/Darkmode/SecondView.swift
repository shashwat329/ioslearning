//
//  SecondView.swift
//  Learn
//
//  Created by shashwat singh on 16/11/24.
//

import SwiftUI

struct SecondView: View {
    @Binding var DarkMode: Bool
    var body: some View {
        ZStack
        {
            Color(DarkMode ? .black: .white)
                .ignoresSafeArea()
            VStack{
                Text("Welcome to the page")
                    .font(.largeTitle)
                    .foregroundStyle(DarkMode ? .white: .black)
                Text("kjscsjc hckajsdhckjshd hkvkjsdh hvchsdk j hdkjvdh hsdjkhjkd kdhvjhdshdsjkfh hkhdskkdsh hsdksdhfsdh assihfsk shjasdhfjgdscashds sjashfjhjhsjfhsjfhsjfhajsdfjzdshfjhsdjfs bxbcbcvbcv ")
                    .foregroundStyle(DarkMode ? .white: .black)
                
            }
        }
    }
}
#Preview {
    @Previewable @State var isDarkmode: Bool = false
    SecondView(DarkMode: $isDarkmode)
}

