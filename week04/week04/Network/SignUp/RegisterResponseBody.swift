//
//  RegisterResponseBody.swift
//  week04
//
//  Created by 쏘 on 5/3/25.
//

import Foundation


struct RegisterResponseWrapper: Codable {
    let success: Bool
    let code: String
    let message: String
    let data: RegisterResponseBody
}

struct RegisterResponseBody: Codable {
    let userId: Int
    let nickname: String
}
