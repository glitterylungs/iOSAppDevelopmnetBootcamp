//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) {authResult, error in
                if let e = error {
                    let alert = UIAlertController(title: K.alertTitle, message: e.localizedDescription, preferredStyle: .alert)
                    let okayAction = UIAlertAction(title: K.alertButtonTitle, style: .default){ (action) in
                        print(action)
                    }
                    alert.addAction(okayAction)
                    self.present(alert, animated: true, completion: self.clearFields)
                    print(e.localizedDescription)
                }
                else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
              
            }
        }
    }
    
    func clearFields(){
        emailTextfield.text = ""
        passwordTextfield.text = ""
    }
    
}
