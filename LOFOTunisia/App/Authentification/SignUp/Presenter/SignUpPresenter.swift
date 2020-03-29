//
//  SignUpPresenter.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/28/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

protocol SignUpPresenterProtocol{
    func didTappedCreateUser(email:String, password:String, age:Int, city:String, name:String, subName:String)
    func didtapBack()
}
public protocol SignUpPresenterDelegate: class {
    func didTappedBack()
}
