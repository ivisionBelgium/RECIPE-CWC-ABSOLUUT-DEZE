//
//  RecipeViewModel.swift
//  RECIPE_LIST_DEZE
//
//  Created by Koen Sas on 08/10/2022.
//

import Foundation

class RecipeViewModel: ObservableObject {
    
    
    // empty recipe objects
    @Published var publRecipes = [RecipeModel]()
    
    init() {
        
        //create an instance of the data service and get data
        
        let service = DataServices()
        self.publRecipes = DataServices.getLocalData()
        
    }
    
}
