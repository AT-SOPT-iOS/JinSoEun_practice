//
//  HomeViewController.swift
//  week04
//
//  Created by 쏘 on 5/9/25.
//

import UIKit

import SnapKit
import Then

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLayout()
        view.backgroundColor = .white
    }
    
    private func setLayout() {
        let label = UILabel()
        let changeNicknameButton = UIButton()
        
        
        [label, changeNicknameButton].forEach {
            view.addSubview($0)
        }
        
        label.do {
            $0.text = "로그인 완료"
            $0.textAlignment = .center
            $0.numberOfLines = 1
        }
        
        changeNicknameButton.do {
            $0.addTarget(self, action: #selector(changeNicknameButtonTap), for: .touchUpInside)
            $0.setTitle("닉네임 변경", for: .normal)
            $0.backgroundColor = .blue
        }
        
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        
        changeNicknameButton.snp.makeConstraints {
            $0.centerY.equalToSuperview().offset(100)
            $0.centerX.equalToSuperview()
            $0.leading.trailing.equalToSuperview().inset(40)
            $0.height.equalTo(50)
        }

    }
    
    @objc private func changeNicknameButtonTap() {
        Task {
            do {
                let changeNicknameVC = ChangeNicknameViewController()
                present(changeNicknameVC, animated: true, completion: nil)
            }
        }
    }
}
