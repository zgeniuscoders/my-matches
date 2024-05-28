//
//  LoginViewModel.swift
//  my matches
//
//  Created by ZGenius on 28/05/2024.
//

import Foundation
import FirebaseAuth

class LoginViewModel : ObservableObject{
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    func login(){
        guard validate()  else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    func validate() -> Bool{
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty
                && !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Please fill in all fields."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email."
            return false
        }
        
        guard password.count >= 6 else {
            return false
        }
        
        return true
    }
    
    private func insertUser(id: String){
        
    }
    
}
