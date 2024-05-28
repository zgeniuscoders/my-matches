//
//  ProfileView.swift
//  my matches
//
//  Created by ZGenius on 27/05/2024.
//

import SwiftUI

struct ProfileView: View {
    let imageUrl: String
    var body: some View {
        ZStack{
            Rectangle()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .containerRelativeFrame([.horizontal,.vertical])
                .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .overlay{
                    GeometryReader{ geometry in
                        Image(imageUrl)
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width)
                            .frame(height: geometry.size.height)
                    }
                        
                }
            
            VStack{
                HStack(spacing: 20){
                    Text("For you")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                    Text("Recomanded")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                }.padding(.vertical,80)
                Spacer()
                
                VStack{
                    VStack(alignment: .leading){
                        VStack(alignment: .leading){
                            HStack{
                                Text("ZGenius Matondo")
                                    .font(.title2)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundStyle(.white)
                                
                                Text("22")
                                    .font(.title2)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundStyle(.white)
                                
                                VStack{
                                    
                                }.frame(width: 15,height: 15)
                                    .background(.green)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    
                            }
                            
                            Text("Kinshasa,RDC")
                                .font(.subheadline)
                                .foregroundStyle(.white)
                            
                            HStack{
                                Spacer()
                                Button{
                                    
                                }label: {
                                    Image(systemName: "multiply")
                                        
                                        
                                }.frame(width: 70, height: 70)
                                    .background(.white)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                
                                Spacer()
                                
                                Button{
                                    
                                }label: {
                                    Image(systemName: "heart")
                                        .font(.title)
                                }.frame(width: 80, height: 80)
                                    .background(.white)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                
                                Spacer()
                                
                                Button{
                                    
                                }label: {
                                    Image(systemName: "ellipsis.bubble.fill")
                                    
                                }.frame(width: 70, height: 70)
                                    .background(.white)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                
                                Spacer()
                            }.padding(.vertical)
                        }
                        
                        Button{
                            
                        } label: {
                            Text("View Profile")
                        }
                        .padding()
                        .foregroundStyle(.white)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        
                    }
                    .padding(.horizontal)
                    .padding(.vertical,40)
                
                }
            }
        }
        .background(.black)
        .ignoresSafeArea()
    }
}

#Preview {
    ProfileView(imageUrl: "1")
}
