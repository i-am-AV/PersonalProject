//
//  ChoiceAssembly.swift
//  PersonalProject
//
//  Created by  Alexander on 31.07.2020.
//  Copyright © 2020  Alexander. All rights reserved.
//

import UIKit

final class ChoiceAssembly {
    static func assembly() -> UIViewController {
        let dataStore = ChoiceDataStore()
        
        let view = ChoiceViewController()
        let presenter = ChoicePresenter(dataStore: dataStore)
        
        view.presenter = presenter
        presenter.view = view
        
        let interactor = ChoiceInteractor()
        interactor.presenter = presenter
        presenter.interactor = interactor
        
        let router = ChoiceRouter(view: view)
        presenter.router = router
        
        return view
    }
}

