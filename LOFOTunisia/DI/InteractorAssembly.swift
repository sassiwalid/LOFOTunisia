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
        container.register(SignUpInteractor.self) { resolver in
            SignUpInteractorImplementation(signUpuserRepository: resolver.resolve(SignUpUserRepository.self)!)
        }.inObjectScope(.container)
        container.register(LoginInteractor.self) { resolver in
            LoginInteractorImplementation(userDataRepository: resolver.resolve(UserDataRepository.self)!)
        }.inObjectScope(.container)
    }
}
