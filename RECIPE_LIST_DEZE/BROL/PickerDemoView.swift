//
//  PickerDemoView.swift
//  RECIPE_LIST_DEZE
//
//  Created by Koen Sas on 13/10/2022.
//

import SwiftUI

struct PickerDemoView: View {
    @State var stHopsakee = 1
    
    var body: some View {
        
        VStack {
            
            Picker("Tap Me", selection: $stHopsakee) {
                
                Text("nummer 1").tag(1)
                Text("nummer 2").tag(2)
                Text("nummer 3").tag(3)
                Text("nummer 4").tag(4)
                Text("nummer 5").tag(5)
                
               
            } .pickerStyle(MenuPickerStyle())
            
            Picker("Tap Me", selection: $stHopsakee) {
                
                Text("nummer 1").tag(1)
                Text("nummer 2").tag(2)
                Text("nummer 3").tag(3)
                Text("nummer 4").tag(4)
                Text("nummer 5").tag(5)
                   
                
               
            } .pickerStyle(SegmentedPickerStyle())
                .padding()
            
            Picker("Tap Me", selection: $stHopsakee) {
                
                Text("nummer 1").tag(1)
                Text("nummer 2").tag(2)
                Text("nummer 3").tag(3)
                Text("nummer 4").tag(4)
                Text("nummer 5").tag(5)
                
               
            } .pickerStyle(WheelPickerStyle())
            
            Picker("Tap Me", selection: $stHopsakee) {
                
                Text("nummer 1").tag(1)
                Text("nummer 3").tag(2)
                Text("nummer 3").tag(3)
                Text("nummer 4").tag(4)
                Text("nummer 5").tag(5)
                
               
            } .pickerStyle(MenuPickerStyle())
            
            Text(String(stHopsakee))
            // of zo
            Text("Selected text: \(stHopsakee)")
            
         
        }
        
    }
}

struct PickerDemoView_Previews: PreviewProvider {
    static var previews: some View {
        PickerDemoView()
    }
}
