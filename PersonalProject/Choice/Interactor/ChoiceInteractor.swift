//
//  ChoiceInteractor.swift
//  PersonalProject
//
//  Created by  Alexander on 31.07.2020.
//  Copyright © 2020  Alexander. All rights reserved.
//

import Foundation

protocol ChoiceInteractorInput {
    func loadInfo()
}

protocol ChoiceInteractorOutput: AnyObject {
    func infoLoaded()
}

final class ChoiceInteractor {
    weak var presenter: ChoiceInteractorOutput?
}

    //MARK: - WelcomeInteractorInput
extension ChoiceInteractor: ChoiceInteractorInput {
    func loadInfo() {
        print(#function)
        presenter?.infoLoaded()
    }
}
