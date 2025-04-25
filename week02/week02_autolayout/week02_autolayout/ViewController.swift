//
//  ViewController.swift
//  week02_autolayout
//
//  Created by 쏘 on 4/21/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        yellowView.backgroundColor = .yellow
        greenView.backgroundColor = .green
        blackView.backgroundColor = .black
        blueView.backgroundColor = .blue
        
        setLayout()
    }
    
    private let yellowView = UIView()
    private let greenView = UIView()
    private let blackView = UIView()
    private let blueView = UIView()
    
    private func setLayout() {
        [yellowView, greenView, blackView, blueView].forEach{self.view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        
        NSLayoutConstraint.activate([
            yellowView.topAnchor.constraint(equalTo: self.view.topAnchor),
            yellowView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            yellowView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2),
            yellowView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4)
        ])
        
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: yellowView.bottomAnchor),
            greenView.leadingAnchor.constraint(equalTo: yellowView.trailingAnchor),
            greenView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2),
            greenView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4)
        ])
        
        NSLayoutConstraint.activate([
            blackView.topAnchor.constraint(equalTo: greenView.bottomAnchor),
            blackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            blackView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2),
            blackView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4)
        ])
        
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: blackView.bottomAnchor),
            blueView.leadingAnchor.constraint(equalTo: blackView.trailingAnchor),
            blueView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2),
            blueView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4)
        ])
        
    }
}

