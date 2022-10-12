//
//  RecipeModel.swift
//  RECIPE_LIST_DEZE
//
//  Created by Koen Sas on 08/10/2022.
//

import Foundation

class Recipetje: Identifiable, Decodable {
    
    
    
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[String]
    var directions:[String]
    var highlights:[String]
    
}

class Ingredientje: Identifiable, Decodable {
    
    // identifiable maakt dat het LIST element de verschillende items ziet, daarom is de UUID verplicgt
    
    var id:UUID?
    var name:String
    var num:Int?
    var unit:String?
    // Denominator voor breuk , onderste
    var denom:Int?
    
}
