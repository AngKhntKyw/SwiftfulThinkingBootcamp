//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 8/5/25.


import SwiftUI

struct ToggleBootcamp: View {
    
    @State var isToggleOn: Bool = true
    
    var body: some View {
        
        VStack {
            
            HStack {
                Text("Status :")
                Text(isToggleOn ? "Online" : "Offline")
            }
            
            
            Toggle(isOn: $isToggleOn, label: {
                Text("Change status")
            })
            .toggleStyle(SwitchToggleStyle(tint: .black))
            
            Spacer()
        }
        .padding(.horizontal,100)
    }
}



#Preview {
    ToggleBootcamp()
}
