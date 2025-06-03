//
//  ProfileView.swift
//  week06
//
//  Created by 쏘 on 5/17/25.
//

import SwiftUI

struct ProfileView_ZStack: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("ganadi")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading) {
                    Text("가나디들")
                        .font(.headline)
                    Text("듀듀듀")
                        .font(.subheadline)
                        .blur(radius: 1)
                }
                Spacer()
            }
            .padding()
            .foregroundColor(.primary)
            .background(Color.primary
                .colorInvert()
                .opacity(0.8))
        }
    }
}

#Preview{
    ProfileView_ZStack()
}
