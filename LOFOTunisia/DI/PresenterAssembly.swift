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
         container.register(LoginPresenter.self) { resolver,viewContract,delegate in
            // Instancier l'implémentation du protocol
            LoginPresenterProtocolImplementation(
                viewContract: viewContract,
                intercator: resolver.resolve(LoginInteractor.self)!,
                delegate: delegate, tagger: resolver.resolve(Tagger.self)!)
               }.inObjectScope(.container)
        // register signupPresenter
        container.register(SignUpPresenter.self) { resolver,viewContract,delegate in
            // Instancier l'implémentation du protocol
            SignUpPresenterImplementation(
                viewContract: viewContract,
                signUpInteractor:resolver.resolve(SignUpInteractor.self)!,delegate: delegate)
        }.inObjectScope(.container)
    }
}
