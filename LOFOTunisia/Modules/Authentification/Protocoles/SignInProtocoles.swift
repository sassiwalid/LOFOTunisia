//
//  SignInProtocoles.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/16/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import UIKit

protocol ViewToPresenterProtocol: class {
    var view: PresenterToViewProtocol? { get set }
    var interactor: PresenterToInteractorProtocol? { get set }
    var router: PresenterToRouterProtocol? { get set }
    func startChekUser(login:String,password:String)
    func showSignUpVC(navigationController: UINavigationController)
    func showDashboardVC(navigationController: UINavigationController)
}

protocol PresenterToViewProtocol: class {
    func showError()
    func showUser(userData: User)
}

protocol PresenterToInteractorProtocol: class {
    var interactorToPresenter: InteractorToPresenterProtocol? { get set }
    func checkUser(login:String, password:String)
}

protocol PresenterToRouterProtocol: class {
    func showSignUp(navigation: UINavigationController)
    func showDashboard(navigation: UINavigationController)
    func createSignInModule() -> SignInViewController
}

protocol InteractorToPresenterProtocol: class {
    func checkUserSuccess(userData: User)
    func userSignInFailed()
}
