//
//  Pizza.swift
//  M2L12 Challenge Solution
//
//  Created by Christopher Ching on 2021-01-19.
//

import Foundation

struct Pizza: Identifiable, Decodable {

    // The id property is for the Identifiable protocol which we need to display these instances in a SwiftUI List
    var id:UUID?
    
    // These properties map to the properties in the JSON file
    var name:String
    var toppings:[String]
    var image:String

}
