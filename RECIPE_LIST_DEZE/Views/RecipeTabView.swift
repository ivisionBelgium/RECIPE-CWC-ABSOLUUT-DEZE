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
            
            Text("Featured")
                .tabItem{
                    
                    VStack{
                        
                        Image(systemName: "globe.europe.africa.fill")
                        Text("Featured")
                        
                    }
              
            }
            RecipeListView()
                .tabItem{
                    
                    Image(systemName: "list.bullet.rectangle.portrait.fill")
                    
                }
        }

    
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
