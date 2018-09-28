//
//  LoginVC.swift
//  instagram
//
//  Created by Jamil Jalal on 9/28/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit
import Parse

class LoginVC: UIViewController {

    @IBOutlet weak var usernameTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signIn(_ sender: Any) {
        
        PFUser.logInWithUsername(inBackground: usernameTxtField.text!, password: passwordTxtField.text!) { (success, error) in
            if success != nil {
                print("logged in")
            }
        }

    }
    @IBAction func signUp(_ sender: Any) {
        let newUser = PFUser()
        newUser.username = usernameTxtField.text
        newUser.password = passwordTxtField.text
        
        newUser.signUpInBackground { (success, error) in
            if success {
                print("yay, created a user")
            }else{
                print(error!.localizedDescription)
            }
        }
    }
    
}
