//
//  DetailViewController.swift
//  Splitter
//
//  Created by Christian Torrico on 8/25/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit

class ImagePresentationVC: UIViewController {
    
    @IBOutlet weak var itemImageView: UIImageView!
    
    var image : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("FIRSTIMAGE")
        itemImageView.image = image
        // Do any additional setup after loading the view.
    }
}
