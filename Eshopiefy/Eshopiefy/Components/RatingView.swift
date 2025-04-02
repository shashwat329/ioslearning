//
//  RatingView.swift
//  Eshopiefy
//
//  Created by shashwat singh on 02/04/25.
//

import SwiftUI

struct RatingView: View {
    let maxStar: Int = 5
    @State private var rating: Int = 0
    var body: some View {
        HStack{
            ForEach(0..<maxStar, id: \.self){index in
                Image(systemName: index >= rating ? "star" : "star.fill")
                    .foregroundStyle(index >= rating ? .black : .yellow)
                    .font(.largeTitle)
                    .onTapGesture {
                        rating  = index + 1
                    }
                
            }
        }
    }
}

#Preview {
    RatingView()
}
