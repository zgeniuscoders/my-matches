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
                            .padding()
                        
                        
                        ScrollView{
                            VStack{
                                ForEach(1...10, id: \.self){ message in
                                    NavigationLink(value: message){
                                        MessageUserItemView()
                                    }
                                }
                            }
                        }.navigationDestination(for: Int.self){ message in
                            Text("msg")
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

struct MessageUserItemView: View {
    var body: some View {
        VStack{
            HStack{
                Image("1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60,height: 60)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay{
                        Circle()
                            .stroke(Color(.systemPink))
                    }
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Ketsia")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.headline)
                            .foregroundStyle(.white)
                            .padding(.horizontal)
                            .padding(.vertical,5)
                        
                        Spacer()
                        
                        Text("20minutes")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.caption)
                            .foregroundStyle(.white)
                    }
                    
                    Text("Hey what's going on up how about tomorrow")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.white)
                        .frame(width: .infinity)
                        .padding(.horizontal)
                }
                
                
            }.padding(.horizontal)
                .padding(.vertical,5)
        }
    }
}
