//
//  LoginViewController.swift
//  playground
//
//  Created by 大川裕平 on 23/08/2023.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var descText: UILabel!
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailText.text, let password = passwordText.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    self.descText.text = e.localizedDescription
                } else {
                    self.performSegue(withIdentifier: "LoginToList", sender: self)
                }
            }
        }
        
    }
    
}
