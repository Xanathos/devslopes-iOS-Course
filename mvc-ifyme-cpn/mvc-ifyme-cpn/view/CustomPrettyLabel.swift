//
//  CustomPrettyLabel.swift
//  mvc-ifyme-cpn
//
//  Created by Christian Torrico on 8/18/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit

class CustomPrettyLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        let fontVar = UIFont(name: "Futura-Bold", size: 22)
        font = fontVar
        textColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
