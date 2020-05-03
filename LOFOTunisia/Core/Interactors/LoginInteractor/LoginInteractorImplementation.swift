//
//  LoginInteractorImplementation.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/28/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

class LoginInteractorImplementation: LoginInteractor {

    
    private let userDataRepository: UserDataRepository
    init(userDataRepository:UserDataRepository) {
        self.userDataRepository = userDataRepository
    }
    func execute(_ loginRequest: LoginRequest, completion: @escaping (LoginResponse) -> Void) {
        userDataRepository.login(email: loginRequest.login, password: loginRequest.password) { (result) in
            let response = LoginResponse(shouldPresentDashBoard: result)
            completion(response)
        }
    }
    func execute(completion: @escaping (FBResponse?) -> Void) {
        userDataRepository.FBLogin(onCompletion: completion)
    }
    
}
