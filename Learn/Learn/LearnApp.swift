//
//  LearnApp.swift
//  Learn
//
//  Created by shashwat singh on 12/11/24.
//

import SwiftUI

@main
struct LearnApp: App {
    @StateObject private var model: CoffeeModel
    init(){
        let webservice = WebServices()
        _model = StateObject(wrappedValue: CoffeeModel(webservice: webservice ))
    }
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject( model )
        }
    }
}
