//
//  SignInPresenterImplementation.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/28/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

public class SignInPresenterProtocolImplementation :SignInPresenterProtocol{
   
    
    let viewContract: SignInViewContract?
    let signInInteractor:LoginInteractor?
    let delegate: LoginPresenterDelegate?
    init(viewContract: SignInViewContract, intercator:LoginInteractor, delegate: LoginPresenterDelegate) {
        self.viewContract = viewContract
        self.signInInteractor = intercator
        self.delegate = delegate
    }
    /// Check if user exist, if ok pass to the dashboard view
    /// - Parameters:
    ///   - login: user email
    ///   - password: user password
    func didTapLoginButton(login: String, password: String) {
         viewContract?.showLoading()
        let request = LoginRequest(login: login, password: password)
        signInInteractor?.execute(request, completion: { [weak self] response in
            guard let strongSelf = self else {
                return
            }
            switch response.shouldPresentDashBoard {
            case true:
                strongSelf.viewContract?.displaySuccess()
                strongSelf.delegate?.openDashboard()
            case false: strongSelf.viewContract?.displayError()
            }
        })
    }
    func didTapCreateUser() {
        delegate?.loginPresenterDelegateDidTappedAddUser()
    }
    
    func didTapFBButton() {
    }
    
    func didTapGmailButton() {
    }
}
