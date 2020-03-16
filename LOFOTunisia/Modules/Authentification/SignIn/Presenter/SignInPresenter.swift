//
//  SignPresenter.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/16/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import UIKit
class SignInPresenter: ViewToPresenterProtocol {
    var view: PresenterToViewProtocol?
    
    var interactor: PresenterToInteractorProtocol?
    
    var router: PresenterToRouterProtocol?
    
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

extension SignInPresenter: InteractorToPresenterProtocol {
    func checkUserSuccess(userData: User) {
        view?.showUser(userData: userData)
    }
    
    func userSignInFailed() {
        view?.showError()
    }
}
