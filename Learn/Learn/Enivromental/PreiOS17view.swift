//
//  PreiOS17view.swift
//  Learn
//
//  Created by shashwat singh on 17/11/24.
//

import SwiftUI
//class AppState: ObservableObject {
//    @Published var DarkMode: Bool = false;
//    @Published var text: String = ""
//}

struct PreiOS17view: View {
    @State private var DarkMode: Bool = false;
    @State private var text: String = ""
    var body: some View {
        ZStack{
            
        }
    }
}
//        ZStack{
//            Color(DarkMode ? .black: .white)
//                .ignoresSafeArea()
//            VStack{
//                TextField("Enter Text", text: $text)
//                    .frame(width: .infinity, height: 40,alignment: .center)
//                    .border(Color.black, width: 1)
//                    .cornerRadius(5)
//                    .padding()
//                    .padding(.horizontal)
//                    .padding(.horizontal)
//                    .padding(.horizontal)
//                    .padding(.horizontal)
//                Text("you have entered \(text)")
//            }
//        }
//        
//    }
//}
//struct PreiOS17view2: View{
// var body: some View{
//     
//        Text("Hello, World!")
//    }
//}
//struct PreiOS17view3: View{
// var body: some View{
//     ZStack{
//         Text("Change your username")
//             .font(.largeTitle)
//         TextField("Enter Username", text: $text)
//             .font(.title)
//     }
//    }
//}
//
//
//#Preview {
//    PreiOS17view()
//        .environment()
//}
