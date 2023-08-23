//
//  ResisterViewController.swift
//  playground
//
//  Created by 大川裕平 on 23/08/2023.
//

import UIKit
import Firebase

class ResisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var descLabel: UILabel!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        // optional binding
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                // optional binding -> if e is not error
                if let e = error {
                    self.descLabel.text = e.localizedDescription
                } else {
                    // Navigate to ListViewController
                    self.performSegue(withIdentifier: "ResisterToList", sender: self)
                }
            }
        }
        
    }
    
}
