//
//  Product.swift
//  coder-swag
//
//  Created by Christian Torrico on 8/12/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName : String
    
    init(title: String, price: String, name: String){
        self.title = title
        self.price = price
        self.imageName = name
    }
}
