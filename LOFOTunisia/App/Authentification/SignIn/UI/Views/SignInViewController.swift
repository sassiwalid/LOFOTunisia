//
//  SignInViewController.swift
//  LOFOTunisia
//
//  Created by walid sassi on 12/29/19.
//  Copyright © 2019 walid sassi. All rights reserved.
//

import UIKit
class SignInViewController: UIViewController {
    // MARK: - Outlets

    @IBOutlet var signInFindObj2Label: UILabel!
    @IBOutlet var signInFindObj1Label: UILabel!
    @IBOutlet var fbButton: CustomButton!
    @IBOutlet var gmailButton: CustomButton!
    @IBOutlet var signInButton: CustomButton!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var signUpLabel: UILabel!
    @IBOutlet weak var checkUserActivityIndicator: UIActivityIndicatorView!
    
    // MARK: - Variables
    var presenter:SignInPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        addTapGesture()
        // Do any additional setup after loading the view.
    }
    private func addTapGesture(){
        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(self.didTapSignUPLabel(_:)))
        signUpLabel.addGestureRecognizer(tapgesture)
        signUpLabel.isUserInteractionEnabled = true
    }
    @objc private func didTapSignUPLabel(_ sender: UITapGestureRecognizer){
        presenter?.didTapCreateUser()
    }

    @IBAction func signInButtonClicked(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
              presenter?.didTapLoginButton(login: email, password: password)
        }
    }
    @IBAction func fbButtonClicked(_ sender: Any) {
        presenter?.didTapFBButton()
    }

    @IBAction func gmailButtonClicked(_ sender: Any) {
        presenter?.didTapGmailButton()
    }

}

extension SignInViewController:SignInViewContract {
    func showLoading() {
    }
    
    func hideLoading() {
    }
    
    func displayError() {
    }
    
    func displaySuccess() {
    }
    
}
