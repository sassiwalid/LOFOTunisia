//
//  SignUpViewController.swift
//  LOFOTunisia
//
//  Created by walid sassi on 1/2/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import UIKit
class SignUpViewController: UIViewController {
    // MARK: - IBOutlets

    @IBOutlet var signUpButton: CustomButton!
    @IBOutlet var userPhotoLabel: UILabel!
    @IBOutlet var userPhoto: UIImageView!
    @IBOutlet var confPasswordText: UITextField!
    @IBOutlet var passwordText: UITextField!
    @IBOutlet var emailText: UITextField!
    @IBOutlet var cityText: UITextField!
    @IBOutlet var ageText: UITextField!
    @IBOutlet var subNameText: UITextField!
    @IBOutlet var nameText: UITextField!
    @IBOutlet var addPhotoView: EllipseView!

    // MARK: - Variables

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
