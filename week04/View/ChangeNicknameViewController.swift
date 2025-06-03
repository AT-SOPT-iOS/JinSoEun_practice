//
//  ChangeNicknameViewController.swift
//  week04
//
//  Created by 쏘 on 5/13/25.
//

import UIKit

import SnapKit
import Then

final class ChangeNicknameViewController: UIViewController {
    
    private let currentNicknameLabel = UILabel()
    private let newNicknameTextField = UITextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        fetchAndSetNickname()
    }
    
    private func fetchAndSetNickname() {
        let userId = UserDefaults.standard.integer(forKey: "userId")
        Task {
            do {
                let nickname = try await FetchNicknameService.shared.fetchUserNickname(userId: userId)
                currentNicknameLabel.text = nickname
            } catch {
                currentNicknameLabel.text = "닉네임 조회 실패"
            }
        }
    }

    
    private func setLayout() {
        view.backgroundColor = .white
    
        
        let changeNicknameButton = UIButton()
        
        currentNicknameLabel.do {
            $0.textColor = .black
        }
        
        newNicknameTextField.do {
            $0.placeholder = "변경할 닉네임"
        }
        
        changeNicknameButton.do {
            $0.setTitle("변경하기", for: .normal)
            $0.backgroundColor = .blue
            $0.addTarget(self, action: #selector(changeNicknameButtonTapped), for: .touchUpInside)
        }
        
        [currentNicknameLabel, newNicknameTextField, changeNicknameButton].forEach {
            view.addSubview($0)
        }
        
        currentNicknameLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(100)
            $0.leading.trailing.equalToSuperview().inset(40)
            $0.height.equalTo(40)
        }
        
        newNicknameTextField.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(150)
            $0.leading.trailing.equalToSuperview().inset(40)
            $0.height.equalTo(40)
        }
        
        changeNicknameButton.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(40)
            $0.top.equalTo(newNicknameTextField.snp.bottom).offset(20)
            $0.height.equalTo(50)
        }
    }
    
    @objc private func changeNicknameButtonTapped() {
        guard let newNickname = newNicknameTextField.text, !newNickname.isEmpty else {
            showAlert(message: "닉네임을 입력해주세요")
            return
        }

        Task {
            do {
                let success = try await ChangeNicknameService.shared.changeNickname(nickname: newNickname)
                if success {
                    currentNicknameLabel.text = newNickname
                    UserDefaults.standard.set(newNickname, forKey: "nickname")
                    showAlert(message: newNickname)
                } else {
                    showAlert(message: "닉네임 변경 실패")
                }
            } catch {
                showAlert(message: "오류 발생: \(error.localizedDescription)")
            }
        }
    }
    
    private func showAlert(message: String) {
        let alert = UIAlertController(title: "알림", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "확인", style: .default))
        present(alert, animated: true)
    }


    
    
}
