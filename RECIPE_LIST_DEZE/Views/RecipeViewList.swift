//
//  RecipeViewList.swift
//  RECIPE_LIST_DEZE
//
//  Created by Koen Sas on 08/10/2022.
//

import SwiftUI

struct RecipeViewList: View {
    
    @ObservedObject var vModel = RecipeViewModel()
    
    var body: some View {
        
        NavigationView {
            
            List(vModel.publRecipes){ r in
                //MARK: nakijken recipe of recipeModel
                NavigationLink (
                    destination: RecipeDetailView(RecipeModel: r),
                    label: {
                       
                       HStack {
                           
                           Image(r.image)
                               .resizable()
                               .scaledToFill()
                               .frame(width: 50, height: 50)
                               .clipped()
                               .font(.title3)
                           
                           Text(r.name)
                               .padding()
                           
                       }
                   }
                )
                    
             

             
            }
        }
        .navigationBarTitle("All recipes")
    }
}

struct RecipeViewList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeViewList()
    }
}
