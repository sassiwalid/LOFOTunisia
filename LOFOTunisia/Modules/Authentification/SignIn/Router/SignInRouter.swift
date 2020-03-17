//
//  SignInRouter.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/17/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import UIKit

class SignInRouter: SignInPresenterToRouterProtocol {
    func showSignUp(navigation: UINavigationController) {
        let signUp = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        navigation.pushViewController(signUp, animated: true)
    }
    
    func showDashboard(navigation: UINavigationController) {
        let dashBoard = LOFOTabBarController(nibName: "LOFOTabBarController", bundle: nil)
        navigation.pushViewController(dashBoard, animated: true)
    }
    
    func createSignInModule() -> SignInViewController {
        let view = SignInViewController(nibName: "SignInViewController", bundle: nil)
        let presenter : SignInViewToPresenterProtocol & SignInInteractorToPresenterProtocol = SignInPresenter()
       let interactor : SignInPresenterToInteractorProtocol = SignInInteractor()
       let router : SignInPresenterToRouterProtocol = SignInRouter()
       view.presenter = presenter
       presenter.view = view
       presenter.router = router
       presenter.interactor = interactor
       interactor.interactorToPresenter = presenter
       return view
    }
    
    
}
