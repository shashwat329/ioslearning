//
//  FormView2.swift
//  Learn
//
//  Created by shashwat singh on 24/12/24.
//

import Foundation
import SwiftUI

struct FormViewError{
     var Email: String = ""
     var password: String = ""
}
struct FormView2: View {
    @State var Email: String = ""
    @State var password: String = ""
    @State var formError: FormViewError = FormViewError();
    private func clearForm(){
        formError = FormViewError();
    }
    var isvaild: Bool{
        clearForm()
        if Email.isEmpty{
            formError.Email = "Email is required!!"
        }
        else if !Email.isValidEmail{
            formError.Email = "Email is not valid!!"
        }
        if password.isEmpty{
            formError.password = "Password is required!!"
        }
        else if password.count < 8{
            formError.password = "Password should be minimum 8 characters!!"
        }
        return formError.Email.isEmpty &&  formError.password.isEmpty
    }
    var body: some View{
        Form{
            TextField("Email",text: $Email)
                .textInputAutocapitalization(.never)
            if !formError.Email.isEmpty{
                Text(formError.Email)
                    .foregroundColor(Color.red)
            }
            SecureField("Password",text: $password)
                .textInputAutocapitalization(.never)
            if !formError.password.isEmpty{
                Text(formError.password)
                    .foregroundColor(Color.red)
            }
            Button("login"){
                if isvaild{
                    print("logged in")
                }
            }
        }
    }
}
#Preview {
    FormView2()
}
