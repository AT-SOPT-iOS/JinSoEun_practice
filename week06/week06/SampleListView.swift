//
//  SampleListView.swift
//  week06
//
//  Created by 쏘 on 5/17/25.
//

import SwiftUI

struct SampleListView: View {
    let items = ["사과", "바나나", "오렌지", "포도", "수박", "망고", "어쩌고", "저쩌고", "졸려요"]
    
    var body: some View {
        List(items, id: \.self) { item in
            Text(item)
        }
    }
}

#Preview {
    SampleListView()
}
