//
//  Wage.swift
//  window-shopper
//
//  Created by Christian Torrico on 7/22/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
