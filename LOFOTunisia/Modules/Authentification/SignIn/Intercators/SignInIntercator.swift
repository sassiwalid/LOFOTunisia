//
//  SignInIntercator.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/16/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

class SignInInteractor: PresenterToInteractorProtocol {
    var interactorToPresenter: InteractorToPresenterProtocol?
    var service: AuthAPIServiceProtocol?
    
    func checkUser(login: String, password: String) {
        service?.getUser(login: login, password: password, onCompletion: { (success, user) in
            
        })
    }
}


