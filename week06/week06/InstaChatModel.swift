//
//  InstaChatModel.swift
//  week06
//
//  Created by 쏘 on 5/17/25.
//

import Foundation
import SwiftUI

struct InstaChatModel: Identifiable {
    let id = UUID()
    let name: String
    let message: String
    let profileImageName: String
}

let instaChatDummy: [InstaChatModel] = [
    InstaChatModel(name: "바보", message: "확인했습니다! 감사합니다 :)", profileImageName: "profile1"),
    InstaChatModel(name: "김가현", message: "넵 수고하세용", profileImageName: "profile1"),
    InstaChatModel(name: "이은지", message: "안녕하세요 답장이 너무 늦었네요 죄송…", profileImageName: "profile1"),
    InstaChatModel(name: "바보", message: "확인했습니다! 감사합니다 :)", profileImageName: "profile1"),
    InstaChatModel(name: "김가현", message: "넵 수고하세용", profileImageName: "profile1"),
    InstaChatModel(name: "이은지", message: "안녕하세요 답장이 너무 늦었네요 죄송…", profileImageName: "profile1")
]
