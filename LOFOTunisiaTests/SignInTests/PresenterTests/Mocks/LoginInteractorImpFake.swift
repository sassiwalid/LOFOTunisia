//
//  LoginInteractorImpFake.swift
//  LOFOTunisia
//
//  Created by walid sassi on 4/5/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
@testable import LOFOTunisia
class LoginInteractorImpFake:LoginInteractor {
    func execute(completion: @escaping (FBResponse?) -> Void) {
        completion(FBResponse.success(data: "111111"))
    }

    func execute(_ loginRequest: LoginRequest, completion: @escaping (LoginResponse) -> Void) {
        completion(LoginResponse(shouldPresentDashBoard: true))
    }

}
