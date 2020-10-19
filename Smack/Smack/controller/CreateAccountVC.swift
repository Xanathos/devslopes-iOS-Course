//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Christian Torrico on 9/26/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_TOCHANNEL, sender: nil)
    }
    
    
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailText.text , emailText.text != "" else { return }
        guard let pass = passwordText.text , passwordText.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                AuthService.instance.loginUser(email: email, password: pass) { (success) in
                    if success {
                        print("logged in as user!", AuthService.instance.authToken)
                    }
                }
            }
        }
    }
    
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
        
    }
    
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
        
    }
}
