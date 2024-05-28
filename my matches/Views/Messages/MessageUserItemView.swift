//
//  MessageUserItemView.swift
//  my matches
//
//  Created by ZGenius on 28/05/2024.
//

import SwiftUI

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
                        .padding(.horizontal)
                }
                
                
            }.padding(.horizontal,5)
                .padding(.vertical,5)
            Divider()
        }
    }
}

#Preview {
    MessageUserItemView()
}
