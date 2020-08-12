//
//  SignUpViewController.swift
//  My Day
//
//  Created by Salman Farshi on 12/8/20.
//  Copyright © 2020 Salman Farshi. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {

    @IBOutlet weak var EmalTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
  

    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        print("Sign button pressed")

        if let email = EmalTextField.text,let password = passwordTextField.text{
                Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
        
                    if let e =  error{
                        print(e)
                    }else {
                        self.performSegue(withIdentifier:"signUpToTab" , sender: self)
                    }
        
                }
                }
        }
  }

