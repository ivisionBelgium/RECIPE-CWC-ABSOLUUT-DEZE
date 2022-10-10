//
//  RecipeModel.swift
//  RECIPE_LIST_DEZE
//
//  Created by Koen Sas on 08/10/2022.
//

import Foundation

class RecipeModel: ObservableObject {
    
    
    // empty recipe objects
    @Published var recipes = [Recipe]()
    
    init() {
        
        //create an instance of the data service and get data
        
        /* let service = DataService()
        service.getLocalData()
        
        of */
        
       // self.recipes = DataService().getLocalData()
        // indien static func in Dataservice
        self.recipes = DataService.getLocalData()
        
        
    }
    
}
