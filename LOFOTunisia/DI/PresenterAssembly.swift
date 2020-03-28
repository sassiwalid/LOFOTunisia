//
//  PresenterAssembly.swift
//  MyViper
//
//  Created by walid sassi on 3/22/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import Swinject

/// PresenterAssembly is a DI Container for Presenters
/// It used to instanciate all objects dependecies 
public class PresenterAssembly: Assembly {
    /// instanciate PresenterDependacies
    /// - Parameter container: register all dependancies
    public func assemble(container: Container) {
         // register loginPresenterProtocol in container
         container.register(SignInPresenterProtocol.self) { r,viewContract,delegate in
            // Instancier l'implémentation du protocol
            SignInPresenterProtocolImplementation(viewContract: viewContract, intercator: r.resolve(LoginInteractor.self)!, delegate: delegate)
               }.inObjectScope(.container)
        // register signupPresenterProtocol
        container.register(SignUpPresenterProtocol.self) { r,viewContract,delegate in
            // Instancier l'implémentation du protocol
            SignUpPresenterImplementation(viewContract: viewContract, signUpInteractor: r.resolve(SignUpInteractor.self)!, delegate: delegate)
        }.inObjectScope(.container)
    }
    
    
}
