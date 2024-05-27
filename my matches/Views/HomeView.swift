//
//  HomeView.swift
//  my matches
//
//  Created by ZGenius on 26/05/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            
            ZStack{
                
                VStack{
                    
                }
                .frame(width: 200,height: 200,alignment: .center)
                .background(Color(.systemPink))
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .blur(radius: 180)
                .offset(x:200,y:-100)
                
                ScrollView(showsIndicators: false){
                    
                    VStack{
                        
                        HStack{
                            Image(systemName: "slider.horizontal.3")
                                .resizable()
                                .frame(width: 25,height: 20)
                            Spacer()
                            Text("My Matches").font(.title3).fontWeight(.medium)
                            Spacer()
                            Image("1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50,height: 50)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        }.padding()
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            LazyHStack{
                                StoryItemView()
                                StoryItemView()
                                StoryItemView()
                                StoryItemView()
                                StoryItemView()
                                StoryItemView()
                                StoryItemView()
                            }
                        }
    
                        LazyVGrid(columns: [
                            GridItem(.flexible()),
                            GridItem(.flexible())
                        ]){
                            ExtractedView()
                            ExtractedView()
                            ExtractedView()
                            ExtractedView()
                            ExtractedView()
                            ExtractedView()
                            ExtractedView()
                        }
                        
                    
                    }.foregroundStyle(.white)
                    
                }
                
                
            }
            
        }.background(Color(.darkText))
    }
}

#Preview {
    HomeView()
}

struct StoryItemView: View {
    var body: some View {
        VStack{
            Image("1")
                .resizable()
                .scaledToFill()
                .frame(width: 80,height: 80)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay{
                    Circle().stroke(Color(.systemPink))
                }
            HStack{
                Text("Ketsia").font(.headline)
                Circle()
                    .frame(width: 10,height: 10)
            }
        }.padding(.horizontal,5)
    }
}

struct ExtractedView: View {
    var body: some View {
        VStack{
            ZStack{
                
                Rectangle()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay{
                        Image("1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                    }
                   

                
                VStack{
                    Spacer()
                    
                    HStack{
                        HStack{
                            Text("Rebecca")
                                .font(.title)
                            Text("22")
                                .font(.title)
                        }.padding()
                        Spacer()
                    }
                }
                
            }.padding(5)
        }
    }
}
