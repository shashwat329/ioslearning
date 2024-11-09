//
//  ContentView.swift
//  Hiking
//
//  Created by shashwat singh on 07/11/24.
//

import SwiftUI

struct ContentView: View {
    let hikes:[Hike] = [
        Hike(photo: "hikeimg2", description: "The great mountain Range", miles: 7),
        Hike(photo: "hikeimg1", description:"The sunshine point", miles: 5.6),
        Hike(photo: "hikeimg3", description: "The great paradise", miles: 23)


    ]
    var body: some View {
            List(hikes){hike in
                HStack(alignment: .top){
                    Image(hike.photo)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 10 ))
                        .frame(width: 100)
                    
                    VStack(alignment: .leading){
                        Text(hike.description)
                        Text("\(hike.miles.formatted()) miles")
                    }.font(.headline)
                }
            }
    }
}

#Preview {
    ContentView()
}
