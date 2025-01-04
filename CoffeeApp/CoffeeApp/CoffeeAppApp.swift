//
//  CoffeeAppApp.swift
//  CoffeeApp
//
//  Created by shashwat singh on 31/12/24.
//

import SwiftUI

@main
struct CoffeeAppApp: App {
    
    @StateObject private var model : CoffeeModel
    
    init(){
        let webservice = WebServices()
        _model = StateObject(wrappedValue: CoffeeModel(webservice: webservice))
        
    }
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
        }
    }
}
