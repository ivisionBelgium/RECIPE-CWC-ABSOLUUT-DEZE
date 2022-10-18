//
//  RationalIvision.swift
//  RECIPE_LIST_DEZE
//
//  Created by Koen Sas, Micah Beech on 16/10/2022.
//

import Foundation



struct Rational {
    
    static func greatestCommonDivisior (_ a: Int, _ b: Int) -> Int {
        
        // GCD (0, b) = b
        if a == 0 { return b }
        // GCD (0, a) = a
        if b == 0 { return a }
        
        // otherwise GCD(a,b) = GCD (b remainder)
        return greatestCommonDivisior(b, a % b)
    }
    
    
    
}
