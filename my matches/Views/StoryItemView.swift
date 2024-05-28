//
//  StoryItemView.swift
//  my matches
//
//  Created by ZGenius on 28/05/2024.
//

import SwiftUI

struct StoryItemView: View {
    var body: some View {
        VStack{
            Image("1")
                .resizable()
                .scaledToFill()
                .frame(width: 60,height: 60)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay{
                    Circle().stroke(Color(.systemPink))
                }
            HStack{
                Text("Ketsia")
                    .font(.callout)
                Circle()
                    .frame(width: 10,height: 10)
            }
        }.padding(.horizontal,5)
    }
}

#Preview {
    StoryItemView()
}
