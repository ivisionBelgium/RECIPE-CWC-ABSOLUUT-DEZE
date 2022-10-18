
//
//  ContentView.swift
//  Recipe List App
//
//  Created by Christopher Ching on 2021-01-14.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var vModel:RecipeViewModel
    
    var body: some View {
        
        NavigationView {
            
            VStack (alignment: .leading) {
                Text("All Recipes")
                    .bold()
                    .padding(.top, 40)
                    .font(.largeTitle)
                
                ScrollView {
                    LazyVStack (alignment: .leading) {
                        ForEach(vModel.pubRecipes) { r in
                            
                            NavigationLink(
                                destination: RecipeDetailView(newVarRecipe:r),
                                label: {
                                    
                                    // MARK: Row item
                                    HStack(spacing: 20.0) {
                                        Image(r.image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 50, height: 50, alignment: .center)
                                            .clipped()
                                            .cornerRadius(5)
                                        Text(r.name)
                                            .foregroundColor(.black)
                                    }
                                    
                                })
                            
                            
                            
                        }
                    }
                }
                
                
            }
            .navigationBarHidden(true)
            .padding(.leading)
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeViewModel())
    }
}










// vorige
//////
////  RecipeListView.swift
////  RECIPE_LIST_DEZE
////
////  Created by Koen Sas on 08/10/2022.
////
//
//import SwiftUI
//
//struct RecipeListView: View {
//
//    // opgelet reference naar RecipeViewModel zonder ()
//    @EnvironmentObject var vModel : RecipeViewModel
//
//    var body: some View {
//
//
//
//
//        NavigationView {
//
//            VStack (alignment: .leading) {
//
//                Text("ALL Recipes")
//                    .bold()
//                    .font(.largeTitle)
//
//                    .padding(.top,40)
//
//                //.bold() als deze hier staat dan krijgen we een versie error
//                ScrollView {
//
//                    // lazyVstack rendert alleen de daadwerkelijke zichtbare scroll items beter voor de CPU
//                    LazyVStack(alignment: .leading) {
//                        ForEach(vModel.pubRecipes) { r in
//
//                            NavigationLink(destination:  RecipeDetailView(newVarRecipe: r),
//
//                                           label: {
//                                HStack {
//
//                                    Image(r.image)
//                                        .resizable()
//                                        .scaledToFill()
//                                        .frame(width: 50, height: 50)
//                                        .clipped()
//                                        .cornerRadius(5)
//                                        .font(.title3)
//
//                                    Text(r.name)
//                                        .padding()
//
//                                }
//                                .navigationBarHidden(true)
//
//                            })
//
//
//
//                        }
//                    }
//                }
//            } .padding()
//
//        }
//
//        .navigationBarHidden(true)
//
//
//
//
//
//
//
//    }
//
//}
//
//
//struct RecipeViewList_Previews: PreviewProvider {
//    static var previews: some View {
//        RecipeListView()
//            .environmentObject(RecipeViewModel())
//    }
//}
