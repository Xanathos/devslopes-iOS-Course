//
//  CustomPrettyView.swift
//  mvc-ifyme-cpn
//
//  Created by Christian Torrico on 8/17/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit

class CustomPrettyView: UIView {
    override func awakeFromNib() {
        layer.cornerRadius = 20
        layer.shadowColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.75
        backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        layer.borderColor = #colorLiteral(red: 0.2871185541, green: 0.2871185541, blue: 0.2871185541, alpha: 1)
        layer.borderWidth = 5
    }
}
