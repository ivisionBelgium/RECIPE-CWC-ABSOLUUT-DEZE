//
//  RecipeTabView.swift
//  RECIPE_LIST_DEZE
//
//  Created by Koen Sas on 11/10/2022.
//

import SwiftUI

struct RecipeTabView: View {
    
   
    
    var body: some View {
        
        
        
        
        TabView {
            
            
            // geweldig gewoon naar class (met dezelfde naam als pagina verwijzen
           RecipeFeaturedView()
                .tabItem{
                    
                    VStack{
                        
                        Image(systemName: "globe.europe.africa.fill")
                        Text("Featured")
                        
                    }
              
            }
            // geweldig gewoon naar class (met dezelfde naam als pagina verwijzen
            RecipeListView()
                .tabItem{
                    
                    Image(systemName: "list.bullet.rectangle.portrait.fill")
                    Text("List")
                }
        }
        // RecipeModel in CWC
        // refereert eentje lager naar : @EnvironmentObject var vModel : RecipeViewModel`
        // Onderstaande mag hier weg want nu geplaatst in entry page Recipe_List_DezeApp.swift
        // als we em hier niet laten staan crashed de preview, niet de RUN
        .environmentObject(RecipeViewModel())

    
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
            
    }
    

}
