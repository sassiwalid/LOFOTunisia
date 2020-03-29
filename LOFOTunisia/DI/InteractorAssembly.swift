//
//  InteractorAssembly.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/28/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import Swinject

class IntercatorAssembly: Assembly {
    func assemble(container: Container) {
        container.register(SignUpInteractor.self) { r in
            SignUpInteractorImplementation(signUpuserRepository: r.resolve(SignUpUserRepository.self)!)
        }.inObjectScope(.container)
        container.register(LoginInteractor.self) { r in
            LoginInteractorImplementation(userDataRepository: r.resolve(UserDataRepository.self)!)
        }.inObjectScope(.container)
    }
}
