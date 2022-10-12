//
//  DataService.swift
//  RECIPE_LIST_DEZE
//
//  Created by Koen Sas on 08/10/2022.
//

import Foundation

class DataService {
    
//    func getLocalData() -> [Recipe] {
        
      static func getLocalData() -> [Recipetje] {
        
        // Path to local json file
        
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        
        // check if pathString is not nil otherwise...
        guard pathString != nil else {
            
            //return empry recipe model
            return [Recipetje]()
        }
        // CREATE URL OBJECT
        
        // pathstring unwrappen want de bundle geegt een optional weer

        let url = URL(fileURLWithPath: pathString!)
        // create data object
        
        do {
            
            let data = try Data(contentsOf: url)
            
            // decode json
            let decoder = JSONDecoder()
    
            // nu ook ingredients decoden
            do {
                let recipeData = try decoder.decode([Recipetje].self, from: data)
                
                // add unique ID's
                for r in recipeData {
                    
                    r.id = UUID()
                    
                    // Add unique aan de ingredients na aanpassing json
                    for i in r.ingredients {
                        
                        i.id = UUID()
                    }
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
        return [Recipetje]()
    }
}
