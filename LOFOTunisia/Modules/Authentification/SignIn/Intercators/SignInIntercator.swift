//
//  SignInIntercator.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/16/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

class SignInInteractor: SignInPresenterToInteractorProtocol {
    var interactorToPresenter: SignInInteractorToPresenterProtocol?
    var service: AuthAPIServiceProtocol? = LoginAPIService(urlSession:URLSession.shared)
    
    func checkUser(login: String, password: String) {
        service?.getUser(login: login, password: password, onCompletion: { (success, user) in
            if success == false {
                self.interactorToPresenter?.userSignInFailed()
                return
            }
            guard let myUser = user else{
                return
            }
            self.interactorToPresenter?.checkUserSuccess(userData: myUser)
        })
    }
}


