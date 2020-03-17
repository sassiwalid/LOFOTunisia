//
//  SignInProtocoles.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/16/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import UIKit

protocol SignInViewToPresenterProtocol: class {
    var view: SignInPresenterToViewProtocol? { get set }
    var interactor: SignInPresenterToInteractorProtocol? { get set }
    var router: SignInPresenterToRouterProtocol? { get set }
    func startChekUser(login:String,password:String)
    func showSignUpVC(navigationController: UINavigationController)
    func showDashboardVC(navigationController: UINavigationController)
}

protocol SignInPresenterToViewProtocol: class {
    func showError()
    func showUser(userData: User)
}

protocol SignInPresenterToInteractorProtocol: class {
    var interactorToPresenter: SignInInteractorToPresenterProtocol? { get set }
    func checkUser(login:String, password:String)
}

protocol SignInPresenterToRouterProtocol: class {
    func showSignUp(navigation: UINavigationController)
    func showDashboard(navigation: UINavigationController)
    func createSignInModule() -> SignInViewController
}

protocol SignInInteractorToPresenterProtocol: class {
    func checkUserSuccess(userData: User)
    func userSignInFailed()
}
