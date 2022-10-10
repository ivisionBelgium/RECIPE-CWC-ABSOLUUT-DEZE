//
//  ContentView.swift
//  M2L12 Challenge Solution
//
//  Created by Christopher Ching on 2021-01-19.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PizzaModel()
    
    var body: some View {
        
        List(model.pizzas) { pizza in
            
            VStack(alignment: .leading) {
                Text(pizza.name)
                    .font(.headline)
                HStack {
                    // In lesson 14, you'll learn how to dynamically generate Text elements from an array.
                    // For now, let's hardcode 3 toppings and make sure the JSON file has 3 toppings for each pizza
                    Text(pizza.toppings[0])
                    Text(pizza.toppings[1])
                    Text(pizza.toppings[2])
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
