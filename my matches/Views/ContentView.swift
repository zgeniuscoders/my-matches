//
//  ContentView.swift
//  my matches
//
//  Created by ZGenius on 26/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var contentViewModel = ContentViewViewModel()
    
    var body: some View {
        if contentViewModel.isSignedIn, !contentViewModel.currentUserId.isEmpty{
            MainView()
        }else{
            LoginView()
        }
        
    }
}

#Preview {
    ContentView()
}
