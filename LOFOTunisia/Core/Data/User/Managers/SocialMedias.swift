//
//  SocialMedias.swift
//  LOFOTunisia
//
//  Created by walid sassi on 4/5/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import FBSDKLoginKit


class SocialMedias {
    static let shared = SocialMedias()
    let manager = LoginManager()
    init() {
    }
    func fbLogin( oncompletion: @escaping(String?,Error?) -> Void){
        manager.logIn(permissions: [], from: nil) {(result, error) in
            guard error == nil else {
                oncompletion(nil,error)
                return
            }
            oncompletion(result?.token?.tokenString, nil)
            
        }
    }
}

