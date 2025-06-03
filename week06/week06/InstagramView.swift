//
//  InstagramView.swift
//  week06
//
//  Created by 쏘 on 5/17/25.
//

import SwiftUI

struct InstagramView: View {
    let chats: [InstaChatModel]
    
    var body: some View {
        VStack(alignment: .leading) {
            List(chats) { chat in
                InstagramViewCell(chat: chat)
            }
            .listStyle(PlainListStyle())
        }
    }
}

struct InstagramViewCell: View {
    
    @State var chat: InstaChatModel
    
    var body: some View {
        VStack {
            HStack {
                Image(chat.profileImageName)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                VStack(alignment: .leading ){
                    HStack(spacing: 5) {
                        Text(chat.name)
                            .font(.headline)
                    }
                    
                    Text(chat.message)
                        .font(.subheadline)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    InstagramView(chats: instaChatDummy)
}
