//
//  LoginResponseBody.swift
//  week04
//
//  Created by 쏘 on 5/9/25.
//

import Foundation

struct LoginResponseWrapper: Codable {
    let success: Bool
    let code: String
    let message: String
    let data: LoginResponseBody
}

struct LoginResponseBody: Codable {
    let userId: Int
}
