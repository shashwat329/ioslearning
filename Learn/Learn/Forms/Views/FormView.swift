//
//  FormView.swift
//  Learn
//
//  Created by shashwat singh on 23/12/24.
//

import SwiftUI

struct FormView: View {
    @State var Email: String = ""
    @State var password: String = ""
    var isvalid: Bool{
        !Email.isEmpty && !password.isEmpty && password.count >= 8 && Email.isValidEmail    }
    var body: some View {
        Form{
            TextField("Email", text: $Email)
                .textInputAutocapitalization(.none)
            SecureField("Password", text: $password)
                .textInputAutocapitalization(.none)
            Button("login"){
                print("button pressed!!")
            }
            .disabled(!isvalid)
        }
    }
}

#Preview {
    FormView()
}
