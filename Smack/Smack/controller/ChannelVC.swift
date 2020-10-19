//
//  ChannelVC.swift
//  Smack
//
//  Created by Christian Torrico on 9/21/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit
import SWRevealViewController

class ChannelVC: UIViewController {

    //Outlets
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue){}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
    }
    
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: self)
    }
    
}
