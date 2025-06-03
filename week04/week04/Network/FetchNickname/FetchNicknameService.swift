//
//  FetchNicknameService.swift
//  week04
//
//  Created by 쏘 on 5/13/25.
//

import Foundation


final class FetchNicknameService {
    static let shared = FetchNicknameService ()
    private init() {}
    
    func fetchUserNickname(userId: Int) async throws -> String {
        let url = URL(string: "http://api.atsopt-seminar4.site/api/v1/users/me")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("\(userId)", forHTTPHeaderField: "userId")

        let (data, response) = try await URLSession.shared.data(for: request)

        guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
            throw NetworkError.responseError
        }

        do {
            let decoded = try JSONDecoder().decode(FetchNicknameResponse.self, from: data)
            UserDefaults.standard.set(decoded.data.nickname, forKey: "nickname")
            return decoded.data.nickname
        } catch {
            throw NetworkError.responseDecodingError
        }
    }

}
