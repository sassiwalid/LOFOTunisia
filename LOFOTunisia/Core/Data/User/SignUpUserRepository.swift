//
//  SignUpUserRepository.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/29/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

protocol SignUpUserRepository {
    func addUser(user:SignUpRequest, onCompletion:((Bool)->Void))
}
