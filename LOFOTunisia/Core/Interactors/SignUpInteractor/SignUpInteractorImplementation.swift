//
//  SignUpInteractorImplementation.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/28/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation


class SignUpInteractorImplementation: SignUpInteractor {
    let signUpuserRepository:SignUpUserRepository?
    init(signUpuserRepository:SignUpUserRepository) {
        self.signUpuserRepository = signUpuserRepository
    }
    func execute(_ loginRequest: SignUpRequest, completion: @escaping (SignUpResponse) -> Void) {
        
    }

}
