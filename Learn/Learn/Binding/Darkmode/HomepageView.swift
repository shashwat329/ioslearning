//
//  HomepageView.swift
//  Learn
//
//  Created by shashwat singh on 16/11/24.
//

import SwiftUI

struct HomepageView: View {
    @State private var Darkmode : Bool = false;
    var body: some View {
        NavigationStack {
            ZStack{
                Color(Darkmode ? .black : .white)
                    .ignoresSafeArea()
                VStack{
                    Button {Darkmode.toggle()} label: {
                        Text("Dark Mode")
                            .foregroundStyle(Darkmode ? .white: .black)
                    }
                    
                    NavigationLink(destination: SecondView(DarkMode: $Darkmode)) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue)
                            .frame(width: 150, height: 50)
                            .overlay{
                                Text("get started".capitalized)
                                    .foregroundStyle(Darkmode ? .white: .black)
                            }
                    }
                }
            }
        }
    }
}

#Preview {
    HomepageView()
}
