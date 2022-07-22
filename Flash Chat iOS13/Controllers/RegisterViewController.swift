//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error {
                let alert = UIAlertController(title: K.alertTitle, message: e.localizedDescription, preferredStyle: .alert)
                let okayAction = UIAlertAction(title: K.alertButtonTitle, style: .default){ (action) in
                    print(action)
                }
                alert.addAction(okayAction)
                self.present(alert, animated: true, completion: nil)
                print(e.localizedDescription)
            }
            else {
                // Navigate to chat
                self.performSegue(withIdentifier: K.registerSegue, sender: self)
            }
        }
        }
    }
    
}
