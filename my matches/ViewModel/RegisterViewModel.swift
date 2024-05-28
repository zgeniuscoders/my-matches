//
//  RegisterViewModel.swift
//  my matches
//
//  Created by ZGenius on 28/05/2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterViewModel : ObservableObject{
    
    @Published var email = ""
    @Published var username = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    func register(){
        guard validator() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            
            self?.insertUserRecord(id: userId)
        }
    }
    
    func validator() -> Bool{
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty
                && !username.trimmingCharacters(in: .whitespaces).isEmpty
                && !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Please fill in all fields."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email."
            return false
        }
        
        return true
        
    }
    
    private func insertUserRecord(id: String){
        let user = User(id: id, name: username, age: 0, bio: "", interests: [""], joined: Date().timeIntervalSince1970)
        let db = Firestore.firestore()
        db.collection("users")
            .document(user.id)
            .setData(user.asDictionary())
    }
    
    
}
