//
//  WelcomeRouter.swift
//  PersonalProject
//
//  Created by Alex Vasilyev on 19.07.2020.
//  Copyright © 2020  Alexander. All rights reserved.
//

import UIKit

protocol WelcomeRouterInput {
    func nextModule()
}

final class WelcomeRouter {
    
    //MARK: - Properties
    
    unowned let view: UIViewController
    
    init(view: UIViewController) {
        self.view = view
    }
}


extension WelcomeRouter: WelcomeRouterInput {
    func nextModule() {
        print(#function)
        view.show(ChoiceViewController(), sender: nil)
    }
}
