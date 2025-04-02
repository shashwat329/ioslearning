//
//  DetailedView.swift
//  Eshopiefy
//
//  Created by shashwat singh on 02/04/25.
//

import SwiftUI

struct DetailedView: View {
    var body: some View {
        ScrollView{
            VStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.gradient)
                    .frame(width: 250, height: 300)
                Text("This is the product title")
    //                .frame(maxWidth: .infinity,alignment: .leading)
                    .font(.title)
                Text("lorem i love you lorem i love you lorem i love you lorem i love you jsbdc jags jhcja sgfjg uhas idfh iaig iusuf iasd asdhf kshdf iuysidfhis hsadfhs ajdfkh hish dfk sdif hihi hihi sahd fsif hisdfh jkshfjs dhfjs fdfsgfhih ")
          
                Section{
                    Text("rate the product".capitalized)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .font(.title)
                    RatingView()
                }
                .padding(.vertical)
                HStack{
                    ButtonView(text: "Add to cart")
                    ButtonView(text: "Buy Now")
                }
                    .foregroundStyle(.white)
                    .font(.title2)
                    .frame(minHeight: 60)
            }
            .padding()
        }
    }
}

#Preview {
    DetailedView()
}
