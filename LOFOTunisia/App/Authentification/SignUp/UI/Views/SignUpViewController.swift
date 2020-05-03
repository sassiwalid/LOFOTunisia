//
//  SignUpViewController.swift
//  LOFOTunisia
//
//  Created by walid sassi on 1/2/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import UIKit
import iOSDropDown
class SignUpViewController: UIViewController {
    // MARK: - IBOutlets

    @IBOutlet var signUpButton: CustomButton!
    @IBOutlet var userPhotoLabel: UILabel!
    @IBOutlet var userPhoto: UIImageView!
    @IBOutlet var confPasswordText: UITextField!
    @IBOutlet var passwordText: UITextField!
    @IBOutlet var emailText: UITextField!
    @IBOutlet weak var cityText: DropDown!
    @IBOutlet var ageText: UITextField!
    @IBOutlet var subNameText: UITextField!
    @IBOutlet var nameText: UITextField!
    @IBOutlet var addPhotoView: EllipseView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    // MARK: - Variables
    var presenter:SignUpPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupColors()
    }
    private func setupColors() {
        scrollView.backgroundColor = UIColor.primaryColor()
    }
    @IBAction func createUserButtonClicked(_ sender: Any) {
        guard let email = emailText.text, let password = passwordText.text, let age = Int(ageText.text ?? "0"), let city = cityText.text, let name = nameText.text, let subName = subNameText.text else{
            return
        }
        presenter?.didTappedCreateUser(email: email, password: password, age: age, city: city, name: name, subName: subName)
    }
    
    @IBAction func didTapBackButton(_ sender: Any) {
        presenter?.didtapBack()
    }
}
extension SignUpViewController: SignUpViewContract{
    func enableCreateButton(_ status: Bool) {
        signUpButton.isEnabled = status
    }
    
    func showLoading() {
    }
    
    func showSuccess() {

    }
    
    func showError() {

    }
    
    
}
