//
//  ChangeNIcknameService.swift
//  week04
//
//  Created by 쏘 on 5/13/25.
//

import Foundation

final class ChangeNicknameService {
    static let shared = ChangeNicknameService()
    private init() { }
    
    func makeRequestBody(nickname: String) -> Data? {
        do {
            let data = ChangeNicknameRequestBody(nickname: nickname)
            let jsonEncoder = JSONEncoder()
            let requestBody = try jsonEncoder.encode(data)
            
            return requestBody
        } catch {
            print(error)
            return nil
        }
    }
    
    func makeRequest(body: Data?, userId: Int) -> URLRequest? {
        let url = URL(string: "http://api.atsopt-seminar4.site/api/v1/users")!
        var request = URLRequest(url: url)
        request.httpMethod = "PATCH"
        request.setValue( "application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("\(userId)", forHTTPHeaderField: "userId")
        request.httpBody = body
        
        return request
    }
    
    func changeNickname(nickname: String) async throws -> Bool {
        guard let userId = UserDefaults.standard.object(forKey: "userId") as? Int, userId != 0 else {
            throw NetworkError.invalidUserId
        }
        
        guard let body = makeRequestBody(nickname: nickname) else {
            throw NetworkError.requestEncodingError
        }
        
        let request = self.makeRequest(body: body, userId: userId)!
        let (data, response) = try await URLSession.shared.data(for: request)
        dump(request)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.responseError
        }
        dump(response)
        
        do {
            let decoded = try JSONDecoder().decode(ChangeNicknameResponseBody.self, from: data)
            if !decoded.success {
                    print("닉네임 변경 실패 사유:", decoded.message)
                }
            return decoded.success
        } catch {
            throw error
        }
        
    }
    
}
