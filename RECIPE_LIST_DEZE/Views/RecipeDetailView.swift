//
//  RecipeDetailView.swift
//  RECIPE_LIST_DEZE
//
//  Created by Koen Sas on 08/10/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    var body: some View {
        
        var publRecipes:RecipeModel
        
       
            
           
            ScrollView {
                
                
                VStack(alignment: .leading){
                    
                    // MARK: recipe image
                    
                    // deze werkt dan weer wel
                    Image(publRecipes.image)
                        .resizable()
                        .scaledToFill()
                    
                    VStack(alignment: . leading){
                        Text("Ingredients")
                            .font(.headline)
                            .padding([.bottom, .top], 5)
                        
                        
                        // MARK: recipe ingredients
                        ForEach (publRecipes.ingredients, id: \.self) { item in
                            
                            Text("- " + item)
                            
                        }
                        
                        Divider()
                        //MARK: recipe directions
                        VStack{
                            Text("Directions")
                                .font(.headline)
                                .padding([.bottom, .top], 1)
                            
                            ForEach (0..<publRecipes.directions.count, id:\.self) { index in
                                
                                Text(String(index+1) + ". " + publRecipes.directions[index])
                                    .padding(.bottom, 5)
                            }
                            
                        }
                        .padding(.horizontal)
                        
                    }
                    .padding(.horizontal)
                    //                VStack{
                    //                    Text(RecipeModel.name)
                    //               0 }
                    
                }
                
            }
            .navigationBarTitle(RecipeModel.name)
        
        }
        
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        //create dummy
       let vModel = RecipeViewModel()
        
        RecipeDetailView(recipe: vModel.publRecipes[0])
    }
}
