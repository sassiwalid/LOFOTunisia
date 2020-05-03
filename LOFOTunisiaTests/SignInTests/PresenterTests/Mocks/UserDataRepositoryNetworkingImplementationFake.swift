//
//  UserDataRepositoryNetworkingImplementationFake.swift
//  LOFOTunisia
//
//  Created by walid sassi on 4/5/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
@testable import LOFOTunisia
class UserDataRepositoryNetworkingImplementationFake: UserDataRepository {
    func login(email: String, password: String, onCompletion: ((Bool) -> Void)) {
        onCompletion(true)
    }

    func FBLogin(onCompletion: (FBResponse) -> Void) {
        onCompletion(FBResponse.success(data: "111111"))
    }
}
