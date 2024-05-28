//
//  LoginView.swift
//  my matches
//
//  Created by ZGenius on 28/05/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    @StateObject var loginViewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    
                }
                .frame(width: 200,height: 200,alignment: .center)
                .background(Color(.systemPink))
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .blur(radius: 180)
                .offset(x:200,y:-100)
                
                VStack(alignment: .leading, spacing: 10){
                    Text("Login")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                    
                    Text("Welcome back sign in to your account to get more information about your job drean")
                        .font(.callout)
                        .foregroundStyle(.white)
                        .padding(.bottom)
                    
                   
                        
                        TextField("email", text: $loginViewModel.email)
                            .textInputAutocapitalization(.none)
                            .modifier(TextFieldModifier())
                        
                        SecureField("Enter your password",text: $loginViewModel.password)
                            .modifier(TextFieldModifier())
                        
                        Button{
                            loginViewModel.login()
                        } label: {
                            Text("Login").fontWeight(.semibold)
                        }.padding()
                            .frame(width: 360)
                            .background(.pink)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                  
                    
                    
                    Text("Forgot password").foregroundStyle(.blue)
                    
                    Spacer()
                    
                    Divider()
                    NavigationLink{
                        RegisterView().navigationBarBackButtonHidden()
                    } label: {
                        HStack(spacing: 3){
                            Spacer()
                            Text("You don't have an account? Sign up")
                                .foregroundStyle(.white)
                            Text("here").foregroundStyle(.blue)
                            Spacer()
                        }.font(.footnote)
                    }
                    
                }.padding()
            }.background(Color(.darkText))
            
        }
    }
}

#Preview {
    LoginView()
}
