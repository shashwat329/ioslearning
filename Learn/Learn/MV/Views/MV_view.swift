//
//  MV_view.swift
//  Learn
//
//  Created by shashwat singh on 23/12/24.
//

import SwiftUI

struct MV_view: View {
    @StateObject private var Storemodel  = storemodel(webservices: webservices3())
    var body: some View {
        Text("hello world".uppercased())
    }
}

#Preview {
    MV_view().environmentObject(storemodel(webservices: webservices3()))
}
