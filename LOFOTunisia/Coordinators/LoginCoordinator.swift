//
//  LoginCoordinator.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/22/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import UIKit
/// LoginCoordinator instanciate LoginViewController and Inject Presenter dependencies
class LoginCoordinator: Coordinator, LoginPresenterDelegate {
    var navigation: UINavigationController?
    /// show Login View Controller
    /// - Parameter navigation: navigation Controller
    func displayLoginVC(navigation: UINavigationController) {
        let loginVC = SignInViewController(nibName: "SignInViewController", bundle: nil)
        self.navigation = navigation
        navigation.isNavigationBarHidden = true
        // instanciate presenter using DI
        loginVC.presenter = DependacyProvider.shared.loginPresenter(viewContract: loginVC, delegate: self)
        navigation.pushViewController(loginVC, animated: true)
    }
    
    /// Instanciate SignUp Coordinator and add it as a child
    func loginPresenterDelegateDidTappedAddUser() {
        let signUpCoordinator = SignUpCoordinator()
        addChild(signUpCoordinator)
        signUpCoordinator.displaySignUpVC(navigation: self.navigation!, coordinator: self)
    }
    func openDashboard() {
          
    }
    func didBackFromCreateUserView() {
        self.navigation?.popViewController(animated: true)
        self.removeAllChildren()
    }

}
