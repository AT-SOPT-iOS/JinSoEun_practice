//
//  ScrollViewController.swift
//  week02_autolayout
//
//  Created by 쏘 on 4/21/25.
//

import UIKit

class ScrollViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        setLayout()
    }
    
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    
    private let redView = UIView()
    private let orangeView = UIView()
    private let yellowView = UIView()
    private let greenView = UIView()
    private let blueView = UIView()
    private let purpleView = UIView()
    
    private func setLayout() {
        redView.backgroundColor = .red
        orangeView.backgroundColor = .orange
        yellowView.backgroundColor = .yellow
        greenView.backgroundColor = .green
        blueView.backgroundColor = .blue
        purpleView.backgroundColor = .purple
        
        [scrollView, contentView].forEach{
            $0?.translatesAutoresizingMaskIntoConstraints = false
        }
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        [redView, orangeView, yellowView, greenView, blueView, purpleView].forEach{
            contentView.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            
            contentView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor)
        ])
        
        let heightConstraint = contentView.heightAnchor.constraint(greaterThanOrEqualTo: view.heightAnchor)
        heightConstraint.priority = .defaultLow
        heightConstraint.isActive = true
        
        let boxHeight: CGFloat = 350
        
        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: contentView.topAnchor),
            redView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            redView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.5),
            redView.heightAnchor.constraint(equalToConstant: boxHeight)
        ])
        
        NSLayoutConstraint.activate([
            orangeView.topAnchor.constraint(equalTo: contentView.topAnchor),
            orangeView.leadingAnchor.constraint(equalTo: redView.trailingAnchor),
            orangeView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.5),
            orangeView.heightAnchor.constraint(equalToConstant: boxHeight)
        ])
        
        NSLayoutConstraint.activate([
            yellowView.topAnchor.constraint(equalTo: redView.bottomAnchor),
            yellowView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            yellowView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.5),
            yellowView.heightAnchor.constraint(equalToConstant: boxHeight)
        ])
        
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: orangeView.bottomAnchor),
            greenView.leadingAnchor.constraint(equalTo: yellowView.trailingAnchor),
            greenView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.5),
            greenView.heightAnchor.constraint(equalToConstant: boxHeight)
        ])
        
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: yellowView.bottomAnchor),
            blueView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            blueView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.5),
            blueView.heightAnchor.constraint(equalToConstant: boxHeight)
        ])
        
        NSLayoutConstraint.activate([
            purpleView.topAnchor.constraint(equalTo: greenView.bottomAnchor),
            purpleView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor),
            purpleView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.5),
            purpleView.heightAnchor.constraint(equalToConstant: boxHeight),
            
            purpleView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])

    }
}

#Preview{
    ScrollViewController()
}
