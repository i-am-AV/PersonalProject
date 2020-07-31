//
//  ChoicePresenter.swift
//  PersonalProject
//
//  Created by  Alexander on 31.07.2020.
//  Copyright © 2020  Alexander. All rights reserved.
//

import Foundation

final class ChoicePresenter {
    
    //MARK: - Properties
    
    weak var view: ChoiceViewInput?
    var interactor: ChoiceInteractorInput?
    var router: ChoiceRouterInput?
    
    let dataStore: ChoiceDataStore
    
    init(dataStore: ChoiceDataStore) {
        self.dataStore = dataStore
    }
}
    //MARK: - WelcomeViewOutput
extension ChoicePresenter: ChoiceViewOutput {
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
extension ChoicePresenter: ChoiceInteractorOutput {
    func infoLoaded() {
        print(#function)
        view?.updateView()
    }
}
    

