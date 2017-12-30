//
//  Wage.swift
//  WindowShopper
//
//  Created by Lance Robbins on 12/29/17.
//  Copyright © 2017 Appcation. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
    
        return Int(ceil(price / wage))
    }
}
