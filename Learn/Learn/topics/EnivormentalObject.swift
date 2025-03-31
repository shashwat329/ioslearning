//
//  EnivormentalObject.swift
//  Learn
//
//  Created by shashwat singh on 12/02/25.
//

import SwiftUI
import Observation

@Observable
class lightup {
     var isON: Bool = false
}

struct bulbView:View{
    @Environment(lightup.self) private var lighton: lightup
    var body : some View{
        VStack{
            Image(systemName: lighton.isON ? "lightbulb.fill" : "lightbulb")
                .font(.largeTitle)
                .foregroundColor(lighton.isON ? .yellow : .black)
            Button("toggle"){
                lighton.isON.toggle()
            }
        }
    }
}
struct roomView:View{
    var body: some View{
        VStack{
            bulbView()
        }
    }
}
struct EnvOBJView: View{
    @Environment(lightup.self) private var lighton: lightup
    var body: some View{
        VStack{
            roomView()
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(lighton.isON ? Color.black : Color.white)
    }
}
#Preview{
    EnvOBJView()
        .environment(lightup())
}
