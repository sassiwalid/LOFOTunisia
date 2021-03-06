//
//  SignUpViewContract.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/28/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

protocol SignUpViewContract {
    func showLoading()
    func showSuccess()
    func enableCreateButton(_ status:Bool)
    func showError()
}
