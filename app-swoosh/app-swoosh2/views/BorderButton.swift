//
//  BorderButton.swift
//  app-swoosh2
//
//  Created by Christian Torrico on 3/10/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
