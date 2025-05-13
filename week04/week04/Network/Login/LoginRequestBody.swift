//
//  LoginRequestBody.swift
//  week04
//
//  Created by 쏘 on 5/9/25.
//

import Foundation

struct LoginRequestBody: Codable {
    let loginId: String
    let password: String
}
