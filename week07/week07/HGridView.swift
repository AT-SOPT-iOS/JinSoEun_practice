//
//  HGridView.swift
//  week07
//
//  Created by 쏘 on 5/24/25.
//

import SwiftUI

struct HGridView: View {
    let rows = [GridItem(.fixed(100)), GridItem(.fixed(100))]
    
    var body: some View {
        ScrollView.init(.horizontal, showsIndicators: false){
            LazyHGrid(rows: rows) {
                ForEach(1...20, id: \.self) { index in
                    ZStack {
                        Rectangle()
                            .fill(Color.orange)
                            .frame(width: 100)
                            .cornerRadius(8)
                        Text(String(index))
                            .foregroundStyle(.white)
                    }
                }
                
            }
            .padding(5)
        }
            .padding(10)
    }
}

#Preview {
    HGridView()
}
