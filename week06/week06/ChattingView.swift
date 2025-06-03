//
//  ChattingView.swift
//  week06
//
//  Created by 쏘 on 5/17/25.
//

import SwiftUI

struct ChattingView: View {
    
    let chats: [ChatModel]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("채팅")
                .font(.title)
                .fontWeight(.bold)
                .padding([.top, .horizontal])
            
            List(chats) { chat in
                ChatRowView(chat: chat)
            }
            .listStyle(PlainListStyle())
        }
    }
}


struct ChatRowView: View {
    
    @State var chat: ChatModel
    
    var body: some View {
        HStack {
            Image(chat.profileImageName)
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            VStack(alignment: .leading ){
                HStack(spacing: 5) {
                    Text(chat.name)
                        .font(.headline)
                    Text(chat.location)
                        .font(.caption)
                }
                
                Text(chat.message)
                    .font(.subheadline)
            }
            Spacer()
            Image(chat.thumbnailImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 4))
                .frame(width: 40, height: 40)
        }
    }
}

#Preview {
    ChattingView(chats: chatDummy)
}
