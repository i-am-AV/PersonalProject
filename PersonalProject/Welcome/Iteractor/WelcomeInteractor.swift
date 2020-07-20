//
//  WelcomeInteractor.swift
//  PersonalProject
//
//  Created by Alex Vasilyev on 19.07.2020.
//  Copyright © 2020  Alexander. All rights reserved.
//

import Foundation

protocol WelcomeInteractorInput {
    func loadInfo()
}

protocol WelcomeInteractorOutput: AnyObject {
    func infoLoaded()
}

final class WelcomeInteractor {
    weak var presenter: WelcomeInteractorOutput?
}

    //MARK: - WelcomeInteractorInput
extension WelcomeInteractor: WelcomeInteractorInput {
    func loadInfo() {
        print(#function)
        presenter?.infoLoaded()
    }
}
