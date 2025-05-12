//
//  RegisterRequestBody.swift
//  week04
//
//  Created by 쏘 on 5/3/25.
//

import Foundation


struct RegisterRequestBody: Codable {
    let loginId: String
    let password: String
    let nickname: String
}
