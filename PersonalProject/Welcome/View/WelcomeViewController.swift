//
//  WelcomeViewController.swift
//  PersonalProject
//
//  Created by Alex Vasilyev on 19.07.2020.
//  Copyright © 2020  Alexander. All rights reserved.
//

import UIKit

protocol WelcomeViewInput: AnyObject {
    func updateView()
}

protocol WelcomeViewOutput {
    func viewIsReady()
    func nextPage()
}

final class WelcomeViewController: UIViewController {
    
    //MARK: - Properties
    
    var presenter: WelcomeViewOutput?
    
    private let stackView = UIStackView()
    private let welcomeLabel = UILabel()
    private let aboutAppLabel = UILabel()
    private let nextButton = UIButton()
    
    //MARK: - Constants
    private enum Text {
        static let welcome = "Добро пожаловать в AppName!"
        static let about = "Это приложение позволяет общаться в разных соц. сетях внутри одного приложения."
        static let next = "Далее"
    }
    
    private enum Color {
        static let welcome = #colorLiteral(red: 0.6470588235, green: 0.6470588235, blue: 0.6470588235, alpha: 1)
        static let about = #colorLiteral(red: 0.7843137255, green: 0.7843137255, blue: 0.7843137255, alpha: 1)
        static let buttonTextColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        static let buttonColor = #colorLiteral(red: 0.2784313725, green: 0.3960784314, blue: 0.9803921569, alpha: 1)
    }
    
    private enum Font {
        static let welcome = UIFont.systemFont(ofSize: 30, weight: .medium)
        static let about = UIFont.systemFont(ofSize: 20, weight: .regular)
        static let button = UIFont.systemFont(ofSize: 20, weight: .bold)
    }
    
    private enum Number {
        static let lines = 0
        static let radius = CGFloat(10)
        static let spacing = CGFloat(32)
        static let height = CGFloat(50)
        static let buttomBottomAnchor = CGFloat(-26)
    }
    
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurateView()
        presenter?.viewIsReady()
    }
}


    //MARK: - Configuration & Constraints
extension WelcomeViewController {
    
    private func configurateView() {
        
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        view.addSubview(stackView)
        configurateStackView()
        addConstraintForStackView()
        
        view.addSubview(nextButton)
        configurateNextButton()
        addConstraintsForNextButton()
    }
    
    private func configurateStackView() {
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = Number.spacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(welcomeLabel)
        stackView.addArrangedSubview(aboutAppLabel)
        
        configurateWelcomeLabel()
        configurateAboutAppLabel()
    }
    
    private func addConstraintForStackView() {
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.widthAnchor.constraint(equalToConstant: view.frame.width / 1.25)
        ])
    }
    
    private func configurateWelcomeLabel() {
        welcomeLabel.text = Text.welcome
        welcomeLabel.textColor = Color.welcome
        welcomeLabel.font = Font.welcome
        welcomeLabel.textAlignment = .center
        welcomeLabel.numberOfLines = Number.lines
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func configurateAboutAppLabel() {
        aboutAppLabel.text = Text.about
        aboutAppLabel.textColor = Color.about
        aboutAppLabel.font = Font.about
        aboutAppLabel.textAlignment = .center
        aboutAppLabel.numberOfLines = Number.lines
        aboutAppLabel.translatesAutoresizingMaskIntoConstraints = false
    }

    private func configurateNextButton() {
        nextButton.setTitle(Text.next, for: .normal)
        nextButton.titleLabel?.textColor = Color.buttonTextColor
        nextButton.titleLabel?.font = Font.button
        nextButton.backgroundColor = Color.buttonColor
        nextButton.layer.cornerRadius = Number.radius
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        nextButton.addTarget(self, action: #selector(nextTapped), for: .touchUpInside)
    }
    
    private func addConstraintsForNextButton() {
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: view.frame.width / 1.25),
            nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: Number.buttomBottomAnchor),
            nextButton.heightAnchor.constraint(equalToConstant: Number.height)
        ])
    }
    
    //MARK:- Actions
    @objc private func nextTapped() {
        print(#function)
        presenter?.nextPage()
    }
}

    //MARK: - WelcomeViewInput
extension WelcomeViewController: WelcomeViewInput {
    func updateView() {
        print(#function)
    }
}
