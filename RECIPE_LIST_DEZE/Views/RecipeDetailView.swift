//
//  RecipeDetailView.swift
//  RECIPE_LIST_DEZE
//
//  Created by Koen Sas on 10/10/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    
    
    // recipe is een nieuwe variabele
    var newVarRecipe:Recipetje
    
    var body: some View {
        
        ScrollView {
           
            // MARK: sdssd
            Image(newVarRecipe.image)
                .resizable()
                .scaledToFit()
          
            // MARK: Ingredients
            
            VStack(alignment: .leading) {
                Text("Ingredients")
                    .padding(.bottom)
                 
                
                ForEach (newVarRecipe.ingredients, id: \.self) { item in
                    
                    Text(item)
                    
                }
                
                // MARK: Directions
                
                Text("Directions")
                    .padding(.vertical)
                 
                
                ForEach (0..<newVarRecipe.directions.count, id: \.self) { index in
                    
                    Text(String(index) + ". " + newVarRecipe.directions[index])
                        .padding(.bottom, 2.0)
                     
                    
                }
                
            }
            .padding()
            
            
                
               
                
            
        } .navigationBarTitle(newVarRecipe.name)
        
       
      
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let prevModel = RecipeViewModel()
        RecipeDetailView(newVarRecipe: prevModel.pubRecipes[0])
    }
}
