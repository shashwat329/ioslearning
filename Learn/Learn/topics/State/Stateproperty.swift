//
//  Stateproperty.swift
//  Learn
//
//  Created by shashwat singh on 11/02/25.
//

import SwiftUI

struct StatePropetryView: View{
    @State private var count: Int = 0
    var body: some View{
        ZStack{
            Color.blue.opacity(0.2)
                .ignoresSafeArea(.all)
            VStack{
                Text("\(count)")
                    .font(.largeTitle)
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 40,height: 2)
                    .offset(y:-20)
                Button {
                    count+=1
                } label: {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 100,height: 50)
                        .overlay{
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                        }
                }
                .offset(y:-20)

            }
        }
    }
}
#Preview{
    StatePropetryView()
}
