//
//  SignPresenter.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/16/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import UIKit
class SignInPresenter: SignInViewToPresenterProtocol {
    var view: SignInPresenterToViewProtocol?
    
    var interactor: SignInPresenterToInteractorProtocol?
    
    var router: SignInPresenterToRouterProtocol?
    
    func showSignUpVC(navigationController: UINavigationController) {
        router?.showSignUp(navigation: navigationController)
    }
    
    func startChekUser(login: String, password: String) {
        interactor?.checkUser(login: login, password: password)
    }
    
    func showDashboardVC(navigationController: UINavigationController) {
        router?.showDashboard(navigation: navigationController)
    }
}

extension SignInPresenter: SignInInteractorToPresenterProtocol {
    func checkUserSuccess(userData: User) {
        view?.showUser(userData: userData)
    }
    
    func userSignInFailed() {
        view?.showError()
    }
}
