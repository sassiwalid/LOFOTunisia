//
//  SignInPresenterImpTests.swift
//  LOFOTunisiaTests
//
//  Created by walid sassi on 4/5/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import XCTest
import Swinject
@testable import LOFOTunisia
class SignInPresenterImpTests: XCTestCase {
    var sut: SignInPresenterProtocolImplementation?
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let signInVC = SignInViewController(nibName: "SignInViewController",
                                            bundle:Bundle(for: SignInViewController.self))
        let coordinate = LoginCoordinator()
        sut = DependacyProvider.shared.loginPresenter(viewContract: signInVC,
                                                      delegate: coordinate) as? SignInPresenterProtocolImplementation
    }
    
    func testDidTapLoginButton() {
        //given
        let login = ""
        let password = ""
        //when
        sut?.didTapLoginButton(login: login, password: password)
        //then
    }
    func testDidTapCreateUser() {
        //when
        sut?.didTapCreateUser()
        //then
        XCTAssertNotNil(sut?.delegate, "delegate should not be nil")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}
