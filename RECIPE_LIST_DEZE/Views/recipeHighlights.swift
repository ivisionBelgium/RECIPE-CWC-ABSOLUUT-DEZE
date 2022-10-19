//
//  recipeHighlights.swift
//  RECIPE_LIST_DEZE
//
//  Created by Koen Sas on 19/10/2022.
//

import SwiftUI

struct recipeHighlights: View {
    
    
    var body: some View {
        
        var allHighlights = ""
        
        init(arrHighlights:[String]) {
            
            for index in 0..<arrHighlights.count {
                
                // if this is the last item don't add a comma
                allHighlights += arrHighlights
                
            }
            else {
                
                for index in 0..<arrHighlights.count -1 {
                    
                    allHighlights += arrHighlights + " , "
                    
                    
                }
                
                
            }
            
        }
       
    }
}

struct recipeHighlights_Previews: PreviewProvider {
    static var previews: some View {
        recipeHighlights(arrHighlights: ["test0","test1","test2","test3","test4","test5"])
    }
}
