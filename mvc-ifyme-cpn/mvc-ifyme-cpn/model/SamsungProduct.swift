//
//  SamsungProduct.swift
//  mvc-ifyme-cpn
//
//  Created by Christian Torrico on 8/17/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import Foundation

class SamsungProduct : AppleProduct {
    public private(set) var isUSBC : Bool
    
    init(name: String, color: String, price : String ,isUSBC : Bool){
        self.isUSBC = isUSBC
        super.init(name: name, price: price, color: color)
    }
}
