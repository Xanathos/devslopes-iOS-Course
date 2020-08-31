//
//  SecondImagePresentVC.swift
//  Splitter
//
//  Created by Christian Torrico on 8/30/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit

class SecondImagePresentVC: UIViewController {

    
    @IBOutlet weak var itemImageView: UIImageView!
    
    var image : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("SECONDIMAGE")
        itemImageView.image = image
    }
}
