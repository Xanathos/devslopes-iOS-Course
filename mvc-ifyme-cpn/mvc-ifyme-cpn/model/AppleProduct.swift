//
//  AppleProduct.swift
//  mvc-ifyme-cpn
//
//  Created by Christian Torrico on 8/16/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import Foundation

class AppleProduct {
    public private(set) var name: String
    public private(set) var price : String
    public private(set) var color : String
    
    init(name: String, price : String, color : String){
        self.name = name
        self.price = price
        self.color = color
    }
}
