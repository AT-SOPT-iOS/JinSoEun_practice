//
//  LoginViewController.swift
//  SOPT_36_practice
//
//  Created by 쏘 on 4/7/25.
//

import UIKit

class LoginViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.view.addSubview(titleLabel)
        self.view.addSubview(idTextField)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(loginButton)
    }
    
    let titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 70, y: 163, width: 250, height: 44))
        label.text = "동네라서 가능한 모든 것\n당근에서 가까운 이웃과 함께해요."
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = .boldSystemFont(ofSize: 18)
        return label
    }()
    
    let  idTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 276, width: 335, height: 52))
        textField.placeholder = "아이디"
        textField.font = .systemFont(ofSize: 14)
        textField.backgroundColor = UIColor(red: 221/255, green: 222/255, blue:227/255, alpha: 1)
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 335, width: 335, height: 52))
        textField.placeholder = "비밀번호"
        textField.font = .systemFont(ofSize: 14)
        textField.backgroundColor = UIColor(red: 221/255, green: 222/255, blue:227/255, alpha: 1)
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: 422, width: 335, height: 57))
        button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.setTitle("로그인하기", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    
    private func pushToWelcomeVC() {
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.id = idTextField.text
        self.navigationController?.pushViewController(welcomeViewController, animated: true)
    }
    
    @objc
    private func loginButtonDidTap() {
        pushToWelcomeVC()
    }
    
        
    
    
}

#Preview {
    LoginViewController()
}
