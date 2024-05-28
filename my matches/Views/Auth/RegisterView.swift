//
//  RegisterView.swift
//  my matches
//
//  Created by ZGenius on 28/05/2024.
//

import SwiftUI

struct RegisterView: View {

    @StateObject var registerViewModel = RegisterViewModel()
    
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
                    Text("Create an account")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                    
                    Text("Welcome back sign in to your account to get more information about your job drean")
                        .font(.callout)
                        .foregroundStyle(.white)
                        .padding(.bottom)
                    
                    TextField("Email", text: $registerViewModel.email)
                        .textInputAutocapitalization(.none)
                        .modifier(TextFieldModifier())
                    
                    TextField("Username", text: $registerViewModel.username)
                        .textInputAutocapitalization(.none)
                        .modifier(TextFieldModifier())
                    
                    SecureField("Enter your password",text: $registerViewModel.password)
                        .modifier(TextFieldModifier())
                    
                    Button{
                        
                    } label: {
                        Text("Register").fontWeight(.semibold)
                    }.padding()
                        .frame(width: 360)
                        .background(.pink)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
   
                    Spacer()
                    
                    Divider()
                    NavigationLink{
                        LoginView().navigationBarBackButtonHidden()
                    } label: {
                        HStack(spacing: 3){
                            Spacer()
                            Text("Already have an account? Sign in")
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
    RegisterView()
}
