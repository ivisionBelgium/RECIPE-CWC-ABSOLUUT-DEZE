//
//  RecipeFeaturedView.swift
//  Recipe List App
//
//  Created by Christopher Ching on 2021-02-09.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model:RecipeModel
    @State var isDetailViewSheetShowing = false
    @State var selectedTabIndex = 0
    
   
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
        
            // MARK: Featured RECIPE TITLE
            Text("Featured Recipes")
                .bold()
                .padding(.leading)
                .padding(.top, 40)
                .font(.largeTitle)
                
            
            GeometryReader { geo in
            
            TabView (selection: $selectedTabIndex) {
                
                // Loop through each recipe
                ForEach (0..<model.recipes.count) { index in
                    
                    // Only show those that should be featured
                    if model.recipes[index].featured == true {
                    
                        // Recipe card
                        Button(action:  {
                            
                            self.isDetailViewSheetShowing = true
                            
                        }, label:  {
                           
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.white)
                                    
                                
                                VStack(spacing: 0) {
                                    Image(model.recipes[index].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                    Text(model.recipes[index].name)
                                        .padding(5)
                                }
                            }
                        }) .tag(index)
                      
         
                    //.sheet(isPresented: $isTabViewSelected[index])
                        //modifiers on the button zetten stonden voorheen achteraan de Zstack
                        //Blauwe button teksten weg
                        .sheet(isPresented: $isDetailViewSheetShowing) {
                            
                            RecipeDetailView(recipe: model.recipes[index])
                            
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(15)
                        .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
                        
                    }
                }
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
        }
        
            VStack (alignment: .leading, spacing: 10) {
                
                
                
                Text("Preparation Time:")
                    .font(.headline)
                Text(model.recipes[selectedTabIndex].prepTime)
                
                Text("Highlights")
                    .font(.headline)
                recipeHighlights(highlights:  model.recipes[selectedTabIndex].highlights
                    
                    
                }
                
            }
        .onAppear(perform: {
            firstIndexFeatured()
        })
            .padding([.leading, .bottom])
        }
       
    

    func firstIndexFeatured() {
    
        var index = model.recipes.firstIndex{ (recipe) -> Bool in
        
        //if recipe.featured == true {
            
            //return recipe.featured
        // of
        return recipe.featured
            
        }
        selectedTabIndex = index ?? 0
            
        }
    }

    
    
    
    



struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}

