//
//  ControlGroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 14/5/25.
//

import SwiftUI

struct ControlGroupBootcamp: View {
    var body: some View {
        Menu("My Menu") {
            ControlGroup("One") {
                Button("Unos") {
                    
                }
                Button("Docs") {
                    
                }
                Menu("Four") {
                    Button("Good") {
                        
                    }
                    Button("Average") {
                        
                    }
                    Button("Bad") {
                        
                    }
                }
            }
            Button("Two") {
                
            }
            Menu("Three") {
                Button("Hi") {
                    
                }
                Button("Hello") {
                    
                }
                Button("How") {
                    
                }
                
               
            }
        }
    }
}

#Preview {
    ControlGroupBootcamp()
}
