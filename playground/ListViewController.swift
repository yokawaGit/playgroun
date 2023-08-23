//
//  ListViewController.swift
//  playground
//
//  Created by 大川裕平 on 23/08/2023.
//

import UIKit
import Firebase

class ListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "📓YourJournal"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "ログアウト", style: .plain, target: nil, action: nil)
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
        
    }
    
}
