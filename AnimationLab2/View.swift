//
//  View.swift
//  AnimationLab2
//
//  Created by Brendon Cecilio on 2/5/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class View: UIView {
    
    private lazy var view: UIView = {
        let layer1 = UIView()
        layer1.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        return layer1
    }()
    
    private lazy var stackView: UIStackView = {
        let buttonContainer = UIStackView(arrangedSubviews: [linearButton, easeInButton, easeOutButton, easeInOut])
        buttonContainer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return buttonContainer
    }()
    
    private lazy var linearButton: UIButton = {
        let linear = UIButton()
        linear.setTitle("Linear", for: .normal)
        linear.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        return linear
    }()
    
    private lazy var easeInButton: UIButton = {
        let linear = UIButton()
        linear.setTitle("EaseIn", for: .normal)
        linear.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        return linear
    }()
    
    private lazy var easeOutButton: UIButton = {
        let linear = UIButton()
        linear.setTitle("EaseOut", for: .normal)
        linear.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        return linear
    }()
    
    private lazy var easeInOut: UIButton = {
        let linear = UIButton()
        linear.setTitle("EaseInOut", for: .normal)
        linear.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        return linear
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupView()
        setupStackView()
    }
    
    private func setupView() {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            view.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            view.leadingAnchor.constraint(equalTo: leadingAnchor),
            view.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    private func setupStackView() {
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50)
        ])
    }
}
