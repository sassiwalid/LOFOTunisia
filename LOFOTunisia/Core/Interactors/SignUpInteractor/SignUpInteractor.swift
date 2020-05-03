//
//  SignUpInteractor.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/28/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

protocol SignUpInteractor:class {
    func execute (_ loginRequest: SignUpRequest, completion: @escaping (SignUpResponse) -> Void )
}
