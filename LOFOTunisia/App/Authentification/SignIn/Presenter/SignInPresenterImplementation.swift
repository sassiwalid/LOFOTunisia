//
//  SignInPresenterImplementation.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/28/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

class SignInPresenterProtocolImplementation :SignInPresenterProtocol{
    let viewContract: SignInViewContract?
    let signInInteractor:LoginInteractor?
    let delegate: LoginPresenterDelegate?
    init(viewContract: SignInViewContract, intercator:LoginInteractor, delegate: LoginPresenterDelegate) {
        self.viewContract = viewContract
        self.signInInteractor = intercator
        self.delegate = delegate
    }
}
