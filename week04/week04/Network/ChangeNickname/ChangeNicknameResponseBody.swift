//
//  ChangeNicknameResponseBody.swift
//  week04
//
//  Created by 쏘 on 5/13/25.
//

import Foundation

struct ChangeNicknameResponseBody: Codable {
    let success: Bool
    let code: String
    let message: String
    let data: String?
}
