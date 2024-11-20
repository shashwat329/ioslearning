//
//  FirstVierw.swift
//  Learn
//
//  Created by shashwat singh on 16/11/24.
//

import SwiftUI

struct FirstView: View {
    @State private var DarkMode: Bool = false;
    var body: some View {
        ZStack{
            Color(DarkMode ? .black: .white)
                .ignoresSafeArea()
            SecondView2(DarkMode: $DarkMode)
        }
    }
}

#Preview {
    FirstView()
}
