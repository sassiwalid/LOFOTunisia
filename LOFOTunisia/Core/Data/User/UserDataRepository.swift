//
//  UserDataRepository.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/28/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

public protocol UserDataRepository {
    func login(email:String, password:String, onCompletion: ((Bool)-> Void))
    func FBLogin(onCompletion: @escaping(FBResponse) -> Void)
}
