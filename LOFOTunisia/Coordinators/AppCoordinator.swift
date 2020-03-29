//
//  AppCoordinator.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/22/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import UIKit
/// AppCoordinator is the first Coordinator created by the app
/// It should open the loginCoordinator and pass main NavigationController to him
class AppCoordinator:Coordinator {
    var window: UIWindow?
    var navigationController: UINavigationController?
    init(window:UIWindow?,navigation:UINavigationController?) {
        self.window = window
        self.navigationController = navigation
    }
    /// this method should instanciate LoginCoordinator
    /// as a child of the AppCoordinator
    func start(){
        let loginInCoordinator = LoginCoordinator()
        self.addChild(loginInCoordinator)
        loginInCoordinator.displayLoginVC(navigation: navigationController!)

    }
}
