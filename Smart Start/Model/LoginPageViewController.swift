//
//  LoginPageViewController.swift
//  Smart Start
//
//  Created by Amir Ahmed on 2018-02-17.
//  Copyright © 2018 Amir Ahmed. All rights reserved.
//

import UIKit
import Firebase

class LoginPageViewController: UIViewController {
    
    // OUTLETS
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // VARIABLES
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // CREATING A REFERENCE TO FIREBASE DATABASE
        
    }
    
    // WHEN THE USER PRESSES THE Submit BUTTON
    
    @IBAction func logInUser(_ sender: UIButton) {
        let alert = UIAlertController(title: "Invalid Login", message: "Invalid Username or Password", preferredStyle: UIAlertControllerStyle.alert)
        
        // TODO: TEXT VALIDATION
        
        if let email = emailTextField.text, let pass = passwordTextField.text{
         
            Auth.auth().signIn(withEmail: email, password: pass, completion: { (user, error) in
                
                // CHECK THAT USER IS NOT NILL
                if let u = user{
                    
                    // USER IS FOUND, TRANSITION TO THE KEY FOB SCREEN
                    print(u, " has been found")
                    
                    // TODO: GET THE DEVICE ID AND AUTHENTICATION KEY FROM THE DATABASE
                    
                    
                    self.performSegue(withIdentifier: "goToFob", sender: self)
                }
                else{
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                    print("ERROR: ", error)
                }
            })
        }
    }
}
