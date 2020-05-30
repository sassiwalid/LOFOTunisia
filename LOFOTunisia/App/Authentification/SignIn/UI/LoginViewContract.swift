//
//  SignInViewContract.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/28/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

protocol LoginViewContract {
    func showLoading()
    func hideLoading()
    func displayError()
    func displaySuccess()
    func enableCreateButton(_ status: Bool)
}
