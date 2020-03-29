//
//  DependacyProvider.swift
//  MyViper
//
//  Created by walid sassi on 3/22/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation
import Swinject

public class DependacyProvider {
    static let shared = DependacyProvider()
    let container = Container()
    let assembler : Assembler
    /// Instanciate all Assembly
    init() {
        // you should begin by  the most down dependacies instanciation
        assembler = Assembler([RepositoryAssembly(),IntercatorAssembly(),PresenterAssembly()],container:container)
    }
    /// instanciate login Presenter and his dependencies
    /// arguments are instances delivred to the presenter without resolve them.
    /// arguments wii be create in the LoginCoordinator
    /// - Parameters:
    ///   - viewContract: loginViewController instance delegate
    ///   - delegate: LoginCoordinator instance delegate
    /// - Returns:
    func loginPresenter(viewContract:SignInViewContract, delegate:LoginPresenterDelegate) -> SignInPresenterProtocol? {
        return assembler
        .resolver
        .resolve(SignInPresenterProtocol.self, arguments:viewContract,delegate)
    }
    /// instanciate SignUp Presenter and his dependencies
    /// - Parameters:
    ///   - viewContract: SignUpViewController instance delegate
    ///   - delegate: LoginCoordinator instance delegate
    func signUpPresenter(viewContract:SignUpViewContract, delegate:LoginPresenterDelegate) -> SignUpPresenterProtocol? {
        return assembler
        .resolver
        .resolve(SignUpPresenterProtocol.self,arguments: viewContract,delegate)
    }
}
