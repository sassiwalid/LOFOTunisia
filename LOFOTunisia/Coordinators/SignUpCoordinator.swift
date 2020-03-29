//
//  SignUpCoordinator.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/22/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import UIKit

class SignUpCoordinator: Coordinator{
    /// display SignUp ViewController
    /// - Parameters:
    ///   - navigation: main navigation controller
    ///   - coordinator: LoginCoordinator
    func displaySignUpVC(navigation:UINavigationController,coordinator:LoginPresenterDelegate){
        let signUpVC = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        // isntanciate Sign up presenter and pass loginCoordinator as delegate in order to handle back action
        signUpVC.presenter = DependacyProvider.shared.signUpPresenter(viewContract: signUpVC, delegate: coordinator)
        navigation.pushViewController(signUpVC, animated: true)
    }
}
