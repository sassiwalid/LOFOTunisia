//
//  SignUpPresenterImplementation.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/28/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

class SignUpPresenterImplementation : SignUpPresenterProtocol {
    let viewContract: SignUpViewContract?
    let signUpInteractor: SignUpInteractor?
    let delegate:SignUpPresenterDelegate
    init(viewContract: SignUpViewContract, signUpInteractor:SignUpInteractor, delegate: SignUpPresenterDelegate) {
        self.signUpInteractor = signUpInteractor
        self.viewContract = viewContract
        self.delegate = delegate
    }
}
