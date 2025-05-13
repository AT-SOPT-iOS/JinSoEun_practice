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
        
        view.addSubview(label)
        
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        
        label.do {
            $0.text = "로그인 완료"
            $0.textAlignment = .center
            $0.numberOfLines = 1
        }
        
        
    }
}
