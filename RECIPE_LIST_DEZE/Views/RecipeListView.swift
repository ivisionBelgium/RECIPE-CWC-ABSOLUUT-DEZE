//
//  RecipeListView.swift
//  RECIPE_LIST_DEZE
//
//  Created by Koen Sas on 08/10/2022.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var vModel = RecipeViewModel()
    
    var body: some View {
        
     
            
            List(vModel.pubRecipes){ r in
            
                       HStack {
                           
                           Image(r.image)
                               .resizable()
                               .scaledToFill()
                               .frame(width: 50, height: 50)
                               .clipped()
                               .cornerRadius(5)
                               .font(.title3)
                           
                           Text(r.name)
                               .padding()
                           
                       }
                   }
                
                    
             

             
            }
      
    }


struct RecipeViewList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
