//
//  Binding.swift
//  Learn
//
//  Created by shashwat singh on 12/02/25.
//

import SwiftUI

struct ChildView:  View{
    @Binding var isOn :   Bool
    var body: some View{
        VStack{
            Image(systemName: isOn ? "lightbulb.fill": "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(isOn ? .yellow : .black)
            Button("Toogle"){
                isOn.toggle()
            }
        }
    }
}

struct BindingView: View{
    @State private var lighton = false
    var body: some View{
        VStack{
            ChildView(isOn: $lighton)
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(lighton ?  Color.black : Color.white)
    }
}

#Preview {
    BindingView()
}
