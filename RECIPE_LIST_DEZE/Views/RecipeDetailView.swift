//
//  RecipeDetailView.swift
//  RECIPE_LIST_DEZE
//
//  Created by Koen Sas on 10/10/2022.
//

import SwiftUI


struct RecipeDetailView: View {
    
        @State var varSelectedServings = 2
        
     
        // recipe is een nieuwe variabele
        var newVarRecipe:Recipetje
    
    var body: some View {
 
       
        
        ScrollView {
           
            // MARK: Image en picker
            Image(newVarRecipe.image)
                .resizable()
                .scaledToFit()
          
           
            
            VStack(alignment: .leading) {
                
                VStack {
                    
                    // MARK: Picker
                    Picker("ServingsNr", selection: $varSelectedServings) {
                        
                        Text("2").tag(2)
                        Text("4").tag(4)
                        Text("6").tag(6)
                        Text("8").tag(8)
                        
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    // we kunnen enkel 1 parameter ingeven hier, rest blijft hetzelfde
                    .frame(width: 160)
                   
                    
                    
                    // deze text geeft he geselecteerde door
                
                //0   deze actieve kut nul gaf compiler is unable to type check
                }
                .padding(.leading, 0)
                .padding(.trailing)
                
                
                
                // MARK: Ingredients
                Text("Ingredients")
                    .padding(.bottom)
                    .font(.title)
                 
                // vooraleer de json aanpassin g
//                ForEach (newVarRecipe.ingredients, id: \.self) { item in
//
//                    Text(item)
//
//                }
                // \.self kan hier weg want lijst is IDENTIFIABLE
                ForEach (newVarRecipe.ingredients) { item in
       
                    Text("- " + RecipeViewModel.getPortions(ingredient: item, recipeServings: Recipetje.servings, targetServings: varSelectedServings + "- " + item.name))
         
                }
                
                // MARK: Directions
                
                Text("Directions")
                    .padding(.vertical).font(.title)
                 
                
                ForEach (0..<newVarRecipe.directions.count, id: \.self) { index in
                    
                    Text(String(index) + ". " + newVarRecipe.directions[index])
                        .padding(.bottom, 2.0)
                     
                    
                }
                
            }
            .padding(.leading)
    
            
        }
        .navigationBarTitle(newVarRecipe.name)
        
       
      
    }
}


struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let prevModel = RecipeViewModel()
        RecipeDetailView(newVarRecipe: prevModel.pubRecipes[0])
    }
}
