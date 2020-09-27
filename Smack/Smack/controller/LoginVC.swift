//
//  LoginVC.swift
//  Smack
//
//  Created by Christian Torrico on 9/26/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func createAccountButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATEACCOUNT, sender: self)
    }
}
