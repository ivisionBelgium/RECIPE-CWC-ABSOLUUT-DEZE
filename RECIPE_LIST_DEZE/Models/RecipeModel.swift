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
    // deze moest veranderen van [String] naar [Ingredient] anders error in  Dataservice i.id: werd als string herkent
    var ingredients:[Ingredientje]
    var directions:[String]
    var highlights:[String]
    
}

class Ingredientje: Identifiable, Decodable {
    
    // identifiable maakt dat het LIST element de verschillende items ziet, daarom is de UUID verplicgt
    
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int? // Denominator voor breuk , onderste
    var unit:String?
    
}
