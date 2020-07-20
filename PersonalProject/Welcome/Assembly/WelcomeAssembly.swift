//
//  WelcomeAssembly.swift
//  PersonalProject
//
//  Created by Alex Vasilyev on 19.07.2020.
//  Copyright © 2020  Alexander. All rights reserved.
//

import UIKit

final class WelcomeAssembly {
    static func assembly() -> UIViewController {
        let dataStore = WelcomeDataStore()
        
        let view = WelcomeViewController()
        let presenter = WelcomePresenter(dataStore: dataStore)
        
        view.presenter = presenter
        presenter.view = view
        
        let interactor = WelcomeInteractor()
        interactor.presenter = presenter
        presenter.interactor = interactor
        
        let router = WelcomeRouter(view: view)
        presenter.router = router
        
        return view
    }
}
