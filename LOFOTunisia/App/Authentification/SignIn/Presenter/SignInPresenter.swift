//
//  SignPresenter.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/16/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import UIKit

protocol SignInPresenterProtocol {
}
/// Login Presenter Delegate handle the intercation betwen the presenter and the LoginCoordinator
public protocol LoginPresenterDelegate: class {
    func openDashboard()
}
