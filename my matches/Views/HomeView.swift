//
//  HomeView.swift
//  my matches
//
//  Created by ZGenius on 26/05/2024.
//

import SwiftUI

struct HomeView: View {
    let users = ["1","5"]
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
                    
                    VStack{
                        HStack{
                            Image(systemName: "slider.horizontal.3")
                                .resizable()
                                .frame(width: 25,height: 20)
                                .foregroundStyle(.white)
                            Spacer()
                            Text("My Matches")
                                .font(.title3)
                                .fontWeight(.medium)
                                .foregroundStyle(.white)
                            
                            Spacer()
                            Image("1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50,height: 50)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        }
                        .padding(.vertical)
                        .padding(.horizontal,5)
                        ScrollView(showsIndicators: false){
                            
                            VStack(alignment: .leading){
                                                        
                                ScrollView(.horizontal, showsIndicators: false){
                                    LazyHStack{
                                        StoryItemView()
                                        StoryItemView()
                                        StoryItemView()
                                        StoryItemView()
                                        StoryItemView()
                                        StoryItemView()
                                        StoryItemView()
                                    }.padding(.vertical,5)
                                }
            
                                Text("Matches")
                                    .font(.title2)
                                    .padding(.bottom,5)
                                    .padding(.horizontal,5)
                                
                                LazyVGrid(columns: [
                                    GridItem(.flexible()),
                                    GridItem(.flexible())
                                ]){
                                    ForEach(users,id:\.self){ user in
                                        NavigationLink(value: user){
                                            UserProfileItemView(imageUrl: user)
                                        }
                                    }
                                    
                                }.navigationDestination(for: String.self){ user in
                                    ProfileView(imageUrl: user)
                                }.padding(.horizontal,5)
                                
                            
                            }.foregroundStyle(.white)
                            
                        }
                    }
                    
                    
                }
                
            }
            .background(Color(.darkText))
        }
        
    }
}

#Preview {
    HomeView()
}


struct UserProfileItemView: View {
    let imageUrl: String
    var body: some View {
        VStack{
            ZStack{
                
                Rectangle()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(minHeight: 250)
                    .overlay{
                        GeometryReader{ geometry in
                            Image(imageUrl)
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width)
                                .frame(height: geometry.size.height)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                            
                    }
                   

                
                VStack{
                    Spacer()
                    
                    HStack{
                        HStack{
                            Text("Rebecca")
                                .font(.title3)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("22")
                                .font(.title3)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }.padding()
                        Spacer()
                    }
                }
                
            }
        }
    }
}
