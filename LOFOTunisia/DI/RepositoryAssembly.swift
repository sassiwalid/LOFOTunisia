//
//  RepositoryAssembly.swift
//  MyViper
//
//  Created by walid sassi on 3/22/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import Swinject
/// RepositoryAssembly is a DI Container for Repository
public class RepositoryAssembly: Assembly {
    public func assemble(container: Container) {
        // register SignUp repository protocol in container
        container.register(UserDataRepository.self) { _ in
            // instanciate it when needed
            UserDataRepositoryNetworkingImplementation()
        }
        container.register(SignUpUserRepository.self) { _ in
            SignUpUserRepositoryNetworkingImplementation()
        }
    }
}
