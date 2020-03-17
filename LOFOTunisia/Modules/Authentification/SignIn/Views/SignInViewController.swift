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

    var presenter: SignInViewToPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.stopAnimation()
        addTapGesture()
        // Do any additional setup after loading the view.
    }
    private func addTapGesture(){
        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(self.didTapSignUPLabel(_:)))
        signUpLabel.addGestureRecognizer(tapgesture)
        signUpLabel.isUserInteractionEnabled = true
    }
    @objc private func didTapSignUPLabel(_ sender: UITapGestureRecognizer){
        self.presenter?.showSignUpVC(navigationController: self.navigationController!)
    }

    @IBAction func signInButtonClicked(_ sender: Any) {
        checkUserActivityIndicator.isHidden = false
        checkUserActivityIndicator.startAnimating()
        presenter?.startChekUser(login: emailTextField.text ?? "", password: passwordTextField.text ?? "")
    }
    private func stopAnimation(){
        checkUserActivityIndicator.stopAnimating()
        checkUserActivityIndicator.isHidden = true
    }

    @IBAction func fbButtonClicked(_ sender: Any) {}

    @IBAction func gmailButtonClicked(_ sender: Any) {}
}

extension SignInViewController: SignInPresenterToViewProtocol {
    func showError() {
        self.stopAnimation()
        showAlertUserNotExist()
    }

    func showUser(userData: User) {
        self.stopAnimation()
        presenter?.showDashboardVC(navigationController: self.navigationController!)
    }

    private func showAlertUserNotExist() {
        let alert = UIAlertController(title: "Alert", message: "Problem Fetching Notice", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
