//
//  RecipeFeaturedView.swift
//  RECIPE_LIST_DEZE
//
//  Created by Koen Sas on 12/10/2022.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    // alweer zonder () skes
    @EnvironmentObject var vModel : RecipeViewModel
    

    var body: some View {
        
        VStack(alignment: .leading) {
            // MARK: features
            Text("Featured Recipes")
                .font(.largeTitle)
                .bold()
               
            
            
            GeometryReader { geo in
                
                TabView {
                    
                    // loop through all recipes
                    ForEach (0..<vModel.pubRecipes.count) { index in
                        // check which cards are valid for display
                        if vModel.pubRecipes[index].featured == true {
                            // Cards
                          
                            ZStack {
                                
                                Rectangle()
                                    .foregroundColor(.white)
                                   
                                
                                VStack(){
                                    
                                    Image(vModel.pubRecipes[index].image)
                                        .resizable(capInsets: EdgeInsets())
                                        .aspectRatio(contentMode: .fill)
                                        
                                        .clipped()
                           
                                    Text(vModel.pubRecipes[index].name)
                                        .foregroundColor(.blue)
                                        //.onHover(foregroundColor(.green))
                                        .padding(10)
                                    
                                    
                                }
                            }
                            .frame(width: geo.size.width - 40,height: geo.size.height - 100, alignment: .center)
                            .cornerRadius(20)
                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
                            //.shadow(color: .black, radius: 5 ,x: -5, y: 5)
                            .opacity(100)
                        // moet voor padding staan
                            
                           
                               
                        }
                        
                       
                        
                    }
                    
                 
                }
                
                // anders geen geswipe
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                // index bollekes achtergrong
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
               
            }
            
            
            VStack(alignment: .leading) {
                Text("Prep time")
                
                Text("Total Time")
                    .font(.title2)
                    .underline()
                    .bold()
               
//                Text()
//                    .environmentObject(RecipeViewModel())
                
               
                
                
               
                Text("Highlights")
                    .font(.title2)
                    .underline()
                    .bold()
                
             
                
               
                
            }
            .padding([.leading, .bottom])
           
            
        }
        
   
       
        
        
        
        
        
        
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeViewModel())
            //.previewDevice("iPad Pro (12.9-inch) (5th generation)")
            .previewDevice("iPhone 12")
            
            
    }
}
