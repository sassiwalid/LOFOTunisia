//
//  LoginInteractor.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/28/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
protocol LoginInteractor {
    func execute(_ loginRequest: LoginRequest, completion: @escaping (LoginResponse) -> Void)
}
