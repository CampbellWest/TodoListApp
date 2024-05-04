//
//  LoginView.swift
//  Todo List
//
//  Created by Campbell West on 2024-05-01.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "Todo List",
                           subtitle: "Get It Done",
                           angle: 15,
                           background: .pink)
                
                // Login form
                Form {
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    
                    TextField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(title: "Login", background: .blue){
                        viewModel.login()
                        
                    }
                    
                }
                
                //CReate account
                
                
                VStack {
                    Text("No Account?")
                    NavigationLink("Create An Account"){
                        RegisterView()
                    }
                }
                .padding(.bottom, 50)
                
                
                Spacer()
            }
        }
    }
    
}

#Preview {
    LoginView()
}
