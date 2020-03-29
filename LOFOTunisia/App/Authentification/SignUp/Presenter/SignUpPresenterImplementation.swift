//
//  SignUpPresenterImplementation.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/28/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation

class SignUpPresenterImplementation : SignUpPresenterProtocol {
    
    let viewContract: SignUpViewContract?
    let signUpInteractor: SignUpInteractor?
    let delegate:LoginPresenterDelegate?
    init(viewContract: SignUpViewContract, signUpInteractor:SignUpInteractor, delegate: LoginPresenterDelegate) {
        self.signUpInteractor = signUpInteractor
        self.viewContract = viewContract
        self.delegate = delegate
    }
    func didTappedCreateUser(email:String, password:String, age:Int, city:String, name:String, subName:String) {
        viewContract?.showLoading()
        let request = SignUpRequest()
        .setAge(age)
        .setCity(city)
        .setEmail(email)
        .setPassword(password)
        .setName(name)
        .setSubName(subName)
        signUpInteractor?.execute(request, completion: { [weak self] response in
            guard let self = self else{
                return
            }
            switch response.isUserCreated{
            case true: self.viewContract?.showSuccess()
            case false: self.viewContract?.showError()
            }
        })
    }
    func didtapBack() {
        delegate?.didBackFromCreateUserView()
    }
}
