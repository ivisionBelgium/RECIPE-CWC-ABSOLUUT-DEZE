//
//  DataServices.swift
//  RECIPE_LIST_DEZE
//
//  Created by Koen Sas on 08/10/2022.
//

import Foundation

class DataServices {
    
    static func getLocalData() -> [RecipeModel]{
        
        // Path to local json file
        
        var pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else {
            
            //return empry recipe model
            return [RecipeModel]()
        }
        // CREATE URL OBJECT
        
        // pathstring unwrappen want de bundle geegt een optional weer

        let url = URL(fileURLWithPath: pathString!)
        // create data object
        
        do {
            
            let data = try Data(contentsOf: url)
            
            // decode json
            let decoder = JSONDecoder()
    
            do {
                let recipeData = try decoder.decode([RecipeModel].self, from: data)
                
                // add unique ID's
                for r in recipeData {
                    
                    r.id = UUID()
                }
                
                return recipeData
            }  catch {
                
                print(error)
            }
        }
        catch{
            
            print(error)
        }

        // moeten we doen
        return [RecipeModel]()
    }
}
