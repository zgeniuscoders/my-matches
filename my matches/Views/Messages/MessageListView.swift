//
//  MessageListView.swift
//  my matches
//
//  Created by ZGenius on 27/05/2024.
//

import SwiftUI

struct MessageListView: View {
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    
                    VStack{
                        
                    }
                    .frame(width: 200,height: 200,alignment: .center)
                    .background(Color(.systemPink))
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .blur(radius: 180)
                    .offset(x:200,y:-100)
                    
                    VStack(alignment: .leading){
                        Text("All Messages")
                            .font(.title)
                            .foregroundStyle(.white)
                            .padding(5)
                        
                        
                        ScrollView(showsIndicators: false){
                            VStack{
                                ForEach(1...10, id: \.self){ message in
                                    NavigationLink(value: message){
                                        MessageUserItemView()
                                    }
                                }
                            }
                        }.navigationDestination(for: Int.self){ message in
                            MessageView()
                        }
                    }
                }
                
            }
            .background(Color(.darkText))
        }
        
    }
}

#Preview {
    MessageListView()
}

