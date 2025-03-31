//
//  Listswiftui.swift
//  Learn
//
//  Created by shashwat singh on 11/02/25.
//

import SwiftUI

struct Listswiftui: View {
    @State private var ls: [String] = []
    @State private var name: String = ""
    var body: some View {
        ZStack{
            VStack{
                TextField("Enter any name",text: $name)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .onSubmit {
                        ls.append(name)
                        
                    }
                Button {
                    ls.append(name)
                } label: {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 100,height: 40)
                        .overlay {
                            Text("submit")
                                .foregroundColor(.white)
                        }
                }
                List(ls,id: \.self){ list in
                    Text(list)
                }

                
            }
        }
    }
}

#Preview {
    Listswiftui()
}
