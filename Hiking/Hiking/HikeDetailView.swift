//
//  HikeDetailView.swift
//  Hiking
//
//  Created by shashwat singh on 09/11/24.
//

import SwiftUI

struct HikeDetailView: View {
    let hike: Hike
    @State private var isZoomed: Bool = false
    var body: some View {
        VStack{
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: isZoomed ? .fill: .fit)
                .onTapGesture {
                    withAnimation {
                        isZoomed.toggle()
                    }
                }
            Text(hike.description)
            Text("\(hike.miles.formatted())")
            Spacer()
        }.navigationTitle(hike.description)
            .navigationBarTitleDisplayMode(.inline)
            
        
    }
}

#Preview {
    NavigationStack{
        HikeDetailView(hike: Hike(photo: "hikeimg2", description: "The great mountain Range", miles: 7))
    }
}
