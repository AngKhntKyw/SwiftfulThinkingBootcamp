//
//  SwipeActionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 13/5/25.
//

import SwiftUI

struct SwipeActionBootcamp: View {
    
    @State var fruits: [String] = ["Apple","Orange","Peach","Banana","Mango","Watermalon"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit.capitalized)
                    .swipeActions(
                        edge: .trailing,
                        
                        // should use allFullSwipe for only one button
                        
                        allowsFullSwipe: false) {
                            Button("Archive") {
                                
                            }
                            .tint(.blue)
                            Button("Save") {
                                
                            }
                            .tint(.green)
                            Button("Junk") {
                                
                            }
                            .tint(.red)
                        }
                
                        .swipeActions(
                            edge: .leading,
                            allowsFullSwipe: true) {
                                Button("Share") {
                                    
                                }
                                .tint(.yellow)
                            }
            }
//            .onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

#Preview {
    SwipeActionBootcamp()
}
