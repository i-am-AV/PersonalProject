//
//  ChoiceViewController.swift
//  PersonalProject
//
//  Created by Alex Vasilyev on 20.07.2020.
//  Copyright © 2020  Alexander. All rights reserved.
//

import UIKit

protocol ChoiceViewInput: AnyObject {
    func updateView()
}

protocol ChoiceViewOutput {
    func viewIsReady()
    func nextPage()
}

final class ChoiceViewController: UIViewController {
    
    //MARK: - Properties
    
    var presenter: ChoiceViewOutput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        presenter?.viewIsReady()
    }
}

    //MARK: - ChoiceViewInput
extension ChoiceViewController: ChoiceViewInput {
    func updateView() {
        print(#function)
    }
}
