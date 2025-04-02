//
//  SwiftUIView.swift
//  Eshopiefy
//
//  Created by shashwat singh on 02/04/25.
//

import SwiftUI

struct ButtonView: View {
    var text: String 
    var body: some View {
        VStack{
            Button {
                print("this is add to \(text) Button")
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue.gradient)
                    .frame(maxHeight: 70)
                    .overlay{
                        Text("\(text)")
                    }
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ButtonView(text: "button1")
}
