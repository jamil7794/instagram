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
    
    @IBAction func onSignIn(_ sender: Any) {
        PFUser.logInWithUsername(inBackground: usernameTxtField.text!, password: passwordTxtField.text!) { (success, error) in
            if success != nil {
                print("logged in")
                self.performSegue(withIdentifier: "toTabView", sender: self)
            }else{
                let alertController = UIAlertController(title: "Sorry, Something Went Wrong!", message: "\(error!.localizedDescription)", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
                    self.dismiss(animated: true, completion: nil)
                }
                UIApplication.shared.keyWindow?.rootViewController?.present(alertController, animated: true){
                    
                }
                alertController.addAction(okAction)
            }
        }

    }
    
    
    @IBAction func onSignUp(_ sender: Any) {
        let newUser = PFUser()
        newUser.username = usernameTxtField.text
        newUser.password = passwordTxtField.text
        
        newUser.signUpInBackground { (success, error) in
            if success {
                print("yay, created a user")
                self.performSegue(withIdentifier: "toTabView", sender: self)
            }else{
                let alertController = UIAlertController(title: "Sorry, Something Went Wrong!", message: "\(error!.localizedDescription)", preferredStyle: .alert)
                UIApplication.shared.keyWindow?.rootViewController?.present(alertController, animated: true){
                    
                }
                let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
                    self.dismiss(animated: true, completion: nil)
                }
                alertController.addAction(okAction)
            }
        }
    }
}
