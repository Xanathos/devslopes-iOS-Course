//
//  ChatVC.swift
//  Smack
//
//  Created by Christian Torrico on 9/21/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit
import SWRevealViewController

class ChatVC: UIViewController {

    
    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.addTarget(self.revealViewController(),
                             action: #selector(SWRevealViewController.revealToggle(_:)),
                             for: .touchUpInside)
        
    }

}
