//
//  MainView.swift
//  my matches
//
//  Created by ZGenius on 27/05/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
    
        TabView{
            HomeView().tabItem {
                Image(systemName: "house")
            }
            
            MessageListView().tabItem {
                Image(systemName: "bubble.middle.bottom.fill")
            }
            
            SettingView().tabItem {
                Image(systemName: "person")
            }
        }
        
    }
}

#Preview {
    MainView()
}
