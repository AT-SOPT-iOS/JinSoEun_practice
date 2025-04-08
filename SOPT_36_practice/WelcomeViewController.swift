//
//  WelcomeViewController.swift
//  SOPT_36_practice
//
//  Created by 쏘 on 4/8/25.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var id: String?
    
    private func bindID() {
        self.welcomeLable.text = "\(id!)님\n반가워요!"
    }
    
    let iconImage: UIImageView = {
        let image = UIImageView(frame: CGRect(x:112, y: 87, width: 150, height: 150))
        image.image = UIImage(named: "karrot_icon")
        return image
    }()
    
    let welcomeLable: UILabel = {
        let label = UILabel(frame: CGRect(x: 140, y: 295, width: 95, height: 60))
        label.textColor = .black
        label.numberOfLines = 2
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var mainButton: UIButton = {
        let button = UIButton(frame:CGRect(x: 20, y: 426, width: 335, height: 57))
        button.setTitle("메인으로", for: .normal)
        button.backgroundColor = UIColor(red:255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(mainButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    lazy var backToLoginButton: UIButton = {
        let button = UIButton(frame:CGRect(x: 20, y: 498, width: 335, height: 57))
        button.setTitle("다시 로그인", for: .normal)
        button.backgroundColor = UIColor(red:221/255, green: 222/255, blue: 227/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(backToLoginButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    @objc
    private func backToLoginButtonDidTap() {
        if self.navigationController == nil {
            self.dismiss(animated: true)
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    @objc
    private func mainButtonDidTap() {
        //
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(iconImage)
        self.view.addSubview(welcomeLable)
        self.view.addSubview(mainButton)
        self.view.addSubview(backToLoginButton)
        
        bindID()
    }

}
