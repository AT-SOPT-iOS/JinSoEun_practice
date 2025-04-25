//
//  WelcomeViewController_DelegatePattern.swift
//  week02
//
//  Created by 쏘 on 4/20/25.
//

import UIKit

protocol DataBindDelegate: AnyObject {
    func dataBind(id: String)
}


class WelcomeViewController_DelegatePattern: UIViewController {
    
    weak var delegate: DataBindDelegate?
    var id: String?
    
    let iconImage: UIImageView = {
        let image = UIImageView(frame: CGRect(x:112, y: 87, width: 150, height: 150))
//        image.image = .karrotIcon
        return image
    }()
    
    let welcomeLable: UILabel = {
        let label = UILabel(frame: CGRect(x: 140, y: 295, width: 95, height: 60))
        label.textColor = .black
        label.numberOfLines = 2
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 25)
        return label
    }()
    
    lazy var mainButton: UIButton = {
        let button = UIButton(frame:CGRect(x: 20, y: 426, width: 335, height: 57))
        button.setTitle("메인으로", for: .normal)
        button.backgroundColor = UIColor(red:255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18)
        button.layer.cornerRadius = 6
        button.addTarget(self, action: #selector(mainButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    lazy var backToLoginButton: UIButton = {
        let button = UIButton(frame:CGRect(x: 20, y: 498, width: 335, height: 57))
        button.setTitle("다시 로그인", for: .normal)
        button.backgroundColor = UIColor(red:221/255, green: 222/255, blue: 227/255, alpha: 1)
        button.setTitleColor(UIColor(red: 182/255, green: 172/255, blue: 185/255, alpha: 1), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18)
        button.layer.cornerRadius = 6
        button.addTarget(self, action: #selector(backToLoginButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(iconImage)
        self.view.addSubview(welcomeLable)
        self.view.addSubview(mainButton)
        self.view.addSubview(backToLoginButton)
        
        bindID()
    }
    
    private func bindID() {
        self.welcomeLable.text = "\(id!)님\n반가워요!"
    }
    
    @objc
    private func backToLoginButtonDidTap() {
        
        if let id = id {
            delegate?.dataBind(id: id)
        }
        
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
    


}


