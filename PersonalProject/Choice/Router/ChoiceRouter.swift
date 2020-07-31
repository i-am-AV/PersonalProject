//
//  ChoiceRouter.swift
//  PersonalProject
//
//  Created by  Alexander on 31.07.2020.
//  Copyright © 2020  Alexander. All rights reserved.
//

import UIKit

protocol ChoiceRouterInput {
    func nextModule()
}

final class ChoiceRouter {
    
    //MARK: - Properties
    
    unowned let view: UIViewController
    
    init(view: UIViewController) {
        self.view = view
    }
}


extension ChoiceRouter: ChoiceRouterInput {
    func nextModule() {
        print(#function)
        view.show(ChoiceViewController(), sender: nil)
    }
}
