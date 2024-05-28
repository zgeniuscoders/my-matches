//
//  my_matchesApp.swift
//  my matches
//
//  Created by ZGenius on 26/05/2024.
//

import SwiftUI
import FirebaseCore

@main
struct my_matchesApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
