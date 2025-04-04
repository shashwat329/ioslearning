//
//  FormView.swift
//  Learn
//
//  Created by shashwat singh on 23/12/24.
//

import SwiftUI

struct loginFormError :View{
    @State var errormsg: String
    var body: some View{
        Text(errormsg)
            .foregroundStyle(Color.red)
    }
}

struct FormView: View {
    @State var Email: String = ""
    @State var password: String = ""
    var isvalid:  Bool{
        !Email.isEmpty && !password.isEmpty && password.count >= 8 && Email.isValidEmail    }
    var body: some View {
        Form{
            TextField("Email", text: $Email)
                .textInputAutocapitalization(.never)
                if !Email.isValidEmail && !Email.isEmpty{
                    loginFormError(errormsg: "Invalid Email")
            }
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
