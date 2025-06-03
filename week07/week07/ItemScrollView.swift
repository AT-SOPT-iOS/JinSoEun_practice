//
//  ItemScrollView.swift
//  week07
//
//  Created by 쏘 on 5/24/25.
//

import SwiftUI

struct ItemScrollView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0...20, id: \.self) { index in
                    VStack (alignment: .center, spacing: 10) {
                        
                        Rectangle()
                            .fill(Color.orange)
                            .frame(height: 100)
                            .cornerRadius(15)
                        Text("아이템 " + String(index))
                            .font(.headline)
                    }
                    .padding(10)
                    .cornerRadius(12)
                    .shadow(radius: 8)
                }
                .padding()
            }
            
        }
    }
}

#Preview {
    ItemScrollView()
}
