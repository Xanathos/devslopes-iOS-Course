//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Christian Torrico on 7/22/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {

    
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8425934911, green: 0.8365033269, blue: 0.8472567201, alpha: 0.8011388644)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "en_US")
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        self.customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.customizeView()

    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 0.9953911901, green: 0.9881951213, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p,
                                           attributes: [.foregroundColor: #colorLiteral(red: 0.9953911901, green: 0.9881951213, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
