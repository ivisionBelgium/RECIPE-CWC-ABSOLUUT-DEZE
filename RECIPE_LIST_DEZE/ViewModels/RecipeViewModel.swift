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
    
    var objIngredientje = [Ingredientje]()
   
    
    init() {
        
        //create an instance of the data service and get data
        
        /* let service = DataService()
        service.getLocalData()
        
        of */
        
       // self.recipes = DataService().getLocalData()
        // indien static func in Dataservice
        self.pubRecipes = DataService.getLocalData()
 
    }
                            // dit geeft ins num en denom
    static func getPortion(gotIngredient:Ingredientje, recipeServings:Int, targetServings:Int) -> String {
        // static ervoor betekend dat we geen instance van recipeViewModel moeten maken
        
        var portion:String = ""
        var numerator = gotIngredient.num ?? 1
        var denominator = gotIngredient.denom ?? 1
        var wholePortion:Int
        
        
        // opgelet NIET numerator wordt gekozen omdat deze nooit nil zal zijn
        if gotIngredient.num != nil {
            
            // serving voor 1 persoon vinden door de denominator te vermenigvuldigen met het aantal servings
        
            //denominator = denominator * recipeServings
            // kan ook
            denominator += recipeServings
            // get target portion by multplying the numerator with target servings
            numerator += targetServings
            // reduce fraction by greatest common divisor
            let divisor = RationalIvision.greatestCommonDivisior(numerator, denominator)
            denominator /= divisor
            numerator /= divisor
            // het the whole portion if numerator > denominator
            if numerator > denominator {
                
                
                // calculate the whole portion
                wholePortion = numerator / denominator
                    // modulo of zo iets 5,2 retourneert hier de remainder 2 dus
              // the remainder
                numerator = numerator % denominator
                
                portion += String(wholePortion)
                
                // checken
                
                if numerator > 0 {
                    
                    
                    // inline IF statement
                    portion += wholePortion > 0 ? " " : ""
                   // portion += "numerator" + "denominatoer"  hier moeten we dus de strings veranderen door de variabelen in de strings
                    portion += "\(numerator)/\(denominator)"
                    
                    
                }
                
                
                
            }
            
            
        }
       
        // express the remainder als a franction
        
        // true als er een property unit is
        
        if let unit = gotIngredient.unit {
            
            return portion + unit
            
        }
        
                                        // weerkt niet
                                        //        let unit = gotIngredient.unit
                                        //
                                        //        if unit = gotIngredient.unit {
                                        //
                                        //            portion + unit
                                        //
                                        //        }
                                               
   
    
        
        return portion
        
    }
                                    
   
   
    
}
