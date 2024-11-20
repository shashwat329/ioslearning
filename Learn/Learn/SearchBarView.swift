//
//  SearchBarView.swift
//  Learn
//
//  Created by shashwat singh on 13/11/24.
//

import SwiftUI

struct SearchBarView: View {
    @State private var search :String = ""
    @State private var filteredSearch :[String] = []
    @State private var nameList :[String] = ["john","shashwat singh","suresh","keshav singh","Rohan","Rahul"]
    var body: some View {
        List(filteredSearch ,id: \.self){ nameList in
            Text(nameList)
                
        }.searchable(text: $search)

            .onChange(of: search){
                if !search.isEmpty{
                    search = search.lowercased()
                    filteredSearch = nameList.filter{$0.lowercased().contains(search)}
                }
                else{
                    filteredSearch.removeAll()
                }
                
            }
        .navigationTitle("Names")
    }
}

#Preview {
    NavigationStack{
        SearchBarView()
    }
}
