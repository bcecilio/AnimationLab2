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
    
    // STACKVIEWS
    
    private lazy var stackView: UIStackView = {
        let buttonContainer = UIStackView(arrangedSubviews: [linearButton, easeInButton, easeOutButton, easeInOut])
        buttonContainer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return buttonContainer
    }()
    
    private lazy var bottomStackView: UIStackView = {
        let buttonContainer = UIStackView(arrangedSubviews: [resetButton, animateButton])
        buttonContainer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return buttonContainer
    }()
    
    private lazy var imageStackView: UIStackView = {
        let buttonContainer = UIStackView(arrangedSubviews: [image1, image2, image3, image4])
        buttonContainer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return buttonContainer
    }()
    
    // BUTTONS
    
    private lazy var linearButton: UIButton = {
        let linear = UIButton()
        linear.setTitle("Linear", for: .normal)
        linear.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        linear.addTarget(self, action: #selector(linearButtonPressed), for: .touchUpInside)
        return linear
    }()
    
    private lazy var easeInButton: UIButton = {
        let linear = UIButton()
        linear.setTitle("EaseIn", for: .normal)
        linear.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        linear.addTarget(self, action: #selector(easeInButtonPressed), for: .touchUpInside)
        return linear
    }()
    
    private lazy var easeOutButton: UIButton = {
        let linear = UIButton()
        linear.setTitle("EaseOut", for: .normal)
        linear.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        linear.addTarget(self, action: #selector(easeOutButtonPressed), for: .touchUpInside)
        return linear
    }()
    
    private lazy var easeInOut: UIButton = {
        let linear = UIButton()
        linear.setTitle("EaseInOut", for: .normal)
        linear.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        linear.addTarget(self, action: #selector(easeInOutButtonPressed), for: .touchUpInside)
        return linear
    }()
    
    private lazy var resetButton: UIButton = {
        let linear = UIButton()
        linear.setTitle("Reset", for: .normal)
        linear.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        linear.addTarget(self, action: #selector(resetbuttonPressed), for: .touchUpInside)
        return linear
    }()
    
    private lazy var animateButton: UIButton = {
        let linear = UIButton()
        linear.setTitle("Animate", for: .normal)
        linear.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        linear.addTarget(self, action: #selector(animateButtonPressed), for: .touchUpInside)
        return linear
    }()
    
    // IMAGES
    
    private lazy var image1: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "TseringTest")
        image.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        image.alpha = 1
        return image
    }()
    
    private lazy var image2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "TseringTest")
        image.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        image.alpha = 1
        return image
    }()
    
    private lazy var image3: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "TseringTest")
        image.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        image.alpha = 1
        return image
    }()
    
    private lazy var image4: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "TseringTest")
        image.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        image.alpha = 1
        return image
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
        setupBottomStackView()
        setupImages()
    }
    
    private func setupView() {
        addSubview(view)
        stackView.spacing = 50
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
            stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100)
        ])
    }
    
    private func setupBottomStackView() {
        addSubview(bottomStackView)
        bottomStackView.spacing = 200
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bottomStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            bottomStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -150)
        ])
    }
    
    private func setupImages() {
        addSubview(imageStackView)
        imageStackView.spacing = 20
        imageStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 20)
        ])
    }
    
    @objc private func linearButtonPressed() {
        if image1.alpha == 1 {
            image1.alpha = 0
        } else {
            image1.alpha = 1
        }
    }
    
    @objc private func easeInButtonPressed() {
        if image2.alpha == 1 {
            image2.alpha = 0
        } else {
            image2.alpha = 1
        }
    }
    
    @objc private func easeOutButtonPressed() {
        if image3.alpha == 1 {
            image3.alpha = 0
        } else {
            image3.alpha = 1
        }
    }
    
    @objc private func easeInOutButtonPressed() {
        if image4.alpha == 1 {
            image4.alpha = 0
        } else {
            image4.alpha = 1
        }
    }
    
    @objc private func animateButtonPressed() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveLinear], animations: {
            self.image1.transform = CGAffineTransform(translationX: 0, y: 350)
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseIn], animations: {
            self.image2.transform = CGAffineTransform(translationX: 0, y: 350)
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseOut], animations: {
            self.image3.transform = CGAffineTransform(translationX: 0, y: 350)
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseInOut], animations: {
            self.image4.transform = CGAffineTransform(translationX: 0, y: 350)
        }, completion: nil)
    }
    
    @objc private func resetbuttonPressed() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveLinear], animations: {
            self.image1.transform = CGAffineTransform(translationX: 0, y: -350)
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveLinear], animations: {
            self.image2.transform = CGAffineTransform(translationX: 0, y: -350)
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveLinear], animations: {
            self.image3.transform = CGAffineTransform(translationX: 0, y: -350)
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveLinear], animations: {
            self.image4.transform = CGAffineTransform(translationX: 0, y: -350)
        }, completion: nil)
    }
}
