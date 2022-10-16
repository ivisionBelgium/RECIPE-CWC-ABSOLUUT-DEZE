//
//  RecipeModel.swift
//  RECIPE_LIST_DEZE
//
//  Created by Koen Sas on 08/10/2022.
//

import Foundation

class RecipeViewModel: ObservableObject {
    
    
    // empty recipe objects
    @Published var pubRecipes = [Recipetje]()
    
    var varIngredientje = [Ingredientje]()
   
    
    init() {
        
        //create an instance of the data service and get data
        
        /* let service = DataService()
        service.getLocalData()
        
        of */
        
       // self.recipes = DataService().getLocalData()
        // indien static func in Dataservice
        self.pubRecipes = DataService.getLocalData()
 
    }
    
    static func getPortion(ingredient:Ingredientje, recipeServings:Int, targetServings:Int) -> String {
        
        // MARK: portion calc
        
        
        // Portion wordt doorgestuurd naar de -> stringsd
        var portion = ""
                                        // ?? zorgt ervoor als num en denom niet bestaan dat die op 1 worden gezet
       
        var numerator = Ingredientje.num ?? 1
        var denominator = Ingredientje.denom ?? 1
        var wholePortions = 0
        
        
        if Ingredientje.num != nil {
            
            // get a single serving size by multiplying denominator by the recipe servings
            // denominator = denominator * recipeServings
            // kan ook
            denominator *= recipeServings
            // get target portion by multiplying numerator by target
           numerator *= targetServings
            
            // reduce fraction by dividing by greatest common divisor
            
            let divisor = Rational.greatestCommonDivisior(numerator, denominator)
            
            numerator = numerator / divisor
            
            denominator = denominator / divisor
            
     
            // get the whole portion if numerator > denominator
            
            if numerator > denominator {
                
                // calculate whole portions
                wholePortions = numerator / denominator
                // calculate
                numerator = numerator % denominator
                
            }
            
            // express the remainder as a fraction
        }
        
        
       
        
        return portion
    }
    
}
