//
//  WelcomePresenter.swift
//  PersonalProject
//
//  Created by Alex Vasilyev on 19.07.2020.
//  Copyright © 2020  Alexander. All rights reserved.
//

import Foundation

final class WelcomePresenter {
    
    //MARK: - Properties
    
    weak var view: WelcomeViewInput?
    var interactor: WelcomeInteractorInput?
    var router: WelcomeRouterInput?
    
    let dataStore: WelcomeDataStore
    
    init(dataStore: WelcomeDataStore) {
        self.dataStore = dataStore
    }
}
    //MARK: - WelcomeViewOutput
extension WelcomePresenter: WelcomeViewOutput {
    func viewIsReady() {
        print(#function)
        interactor?.loadInfo()
    }
    
    func nextPage() {
        print(#function)
        router?.nextModule()
    }
}
    //MARK: - WelcomeInteractorOutput
extension WelcomePresenter: WelcomeInteractorOutput {
    func infoLoaded() {
        print(#function)
        view?.updateView()
    }
}
    
