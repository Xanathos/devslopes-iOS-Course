//
//  ViewController.swift
//  mvc-ifyme-cpn
//
//  Created by Christian Torrico on 8/15/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var iPhoneNameLabel: UILabel!
    @IBOutlet weak var iPhoneColorLabel: UILabel!
    @IBOutlet weak var iPhonePriceLabel: UILabel!
    
    
    @IBOutlet weak var stackContainer: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let appleProduct = AppleProduct(name: "iPhone X", price: "999.99", color: "Space Gray")
        
        
        let samsungProduct = SamsungProduct(name: "Samsung Galaxy S10", color: "Black", price: "500.00", isUSBC: true)
        
        iPhoneNameLabel.text = samsungProduct.name
        iPhoneColorLabel.text = "in \(samsungProduct.color)"
        iPhonePriceLabel.text = "$\(samsungProduct.price)"
        
        if samsungProduct.isUSBC {
            let newLabel = CustomPrettyLabel()
            newLabel.text = "And it has Quick Charge feature!"
            stackContainer.addArrangedSubview(newLabel)
        }
        
    }
}

