//
//  RoundedButton.swift
//  Smack
//
//  Created by Christian Torrico on 10/16/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    @IBInspectable var cornerRadius : CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
    
    func setupView(){
        self.layer.cornerRadius = cornerRadius
    }
}
