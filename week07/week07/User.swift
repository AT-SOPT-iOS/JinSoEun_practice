//
//  User.swift
//  week07
//
//  Created by 쏘 on 5/24/25.
//

import SwiftUI

struct User: Identifiable, Hashable {
    var id = UUID()
    var name: String,
        age: Int
}
