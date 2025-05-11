//
//  OnAppearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 9/5/25.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Start text..."
    @State var count: Int = 0
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                Text(myText)
                
                LazyVStack {
                    
                    ForEach(0..<50) { index in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text"
                }
               
            })
            .onDisappear(perform: {
                myText = "Ending text"
            })
            .navigationTitle("Oppear \(count)")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
