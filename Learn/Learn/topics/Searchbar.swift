//
//  Searchbar.swift
//  Learn
//
//  Created by shashwat singh on 12/02/25.
//
//import SwiftUI
//struct Searchbar: View {
//    private var city :[String] = ["Patna ","Mumbai","Delhi","Kanpur","Jaipur","Chennai","Kolkata","Bhopal"]
//    @State private var searchTExt:String = ""
//    @State private var filteredCity:[String] = []
//    var body: some View {
//        VStack{
//            List(filteredCity,id: \.self){ls in
//                Text(ls)
//            }
//        }
//        .navigationTitle("City")
//        .searchable(text: $searchTExt,prompt: "Search City")
//        .onChange(of: searchTExt){
//            if !searchTExt.isEmpty{
//                filteredCity = city.filter{$0.localizedCaseInsensitiveContains(searchTExt)}
//            }
//            else{
//                filteredCity = []
//            }
//        }
//        .onAppear(perform: {
//            filteredCity = []
//        })
//       
//    }
//}
//#Preview{
//    NavigationStack{
//        Searchbar()
//    }
import SwiftUI

struct Searchbar: View {
    @State private var searchTExt:String = ""
    private var citylist: [String] = ["kolkata","mumbai","delhi","chennai","jaipur","pune","bhopal","patna","agarim","amritsar"]
    @State private var filteredCity:[String] = []
    var body: some View {
        VStack{
            List(filteredCity,id: \.self){ ls in
                Button("\(ls)") {
                    searchTExt = ls
                }
            }
            .listStyle(.plain)

        }
        .navigationTitle("City")
        .searchable(text: $searchTExt,prompt: "Search City")
        .onChange(of: searchTExt){
            if !searchTExt.isEmpty{
                filteredCity = self.citylist.filter{$0.localizedCaseInsensitiveContains(searchTExt)}
            }
            else{
                filteredCity = []
            }
        }
    }
}

#Preview {
    NavigationStack{
        Searchbar()
    }
}
