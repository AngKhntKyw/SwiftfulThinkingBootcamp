//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 9/5/25.
//
import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
        
        
        NavigationView {
            
            ScrollView {
                
                VStack(spacing: 20) {
                    
                    Text("This text is primary")
                        .foregroundColor(.primary)
                    
                    Text("This text is secondary")
                        .foregroundColor(.secondary)
                    
                    Text("This text is red")
                        .foregroundColor(.red)
                    
                    Text("This text is white")
                        .foregroundColor(.white)
                    
                    Text("This text is globally adaptive")
                        .foregroundColor(Color("myColor"))
                    
                    Text("This color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                    
                }
            }
            .navigationTitle("Dark Mode")
        }
    }
}

#Preview {
    DarkModeBootcamp()
}
