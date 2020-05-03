//
//  UserDataRepositoryNetworkingImplementation.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/28/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

class UserDataRepositoryNetworkingImplementation: UserDataRepository {
    
    func FBLogin(onCompletion: @escaping (FBResponse) -> Void) {
        SocialMedias.shared.fbLogin{ token, error  in
            if let _ = error {
                onCompletion(.LOFOErrror)
            }
            if let token = token {
                onCompletion(.success(data: token))
            }
        }
    }
    
    func login(email: String, password: String, onCompletion: ((Bool) -> Void)) {
    }
}
