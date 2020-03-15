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
    @IBOutlet weak var signUpButton: CustomButton!
    @IBOutlet weak var userPhotoLabel: UILabel!
    @IBOutlet weak var userPhoto: UIImageView!
    @IBOutlet weak var confPasswordText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var subNameText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var addPhotoView: EllipseView!
    // MARK: - Variables
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
