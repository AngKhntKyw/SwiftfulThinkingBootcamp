//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 7/5/25.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = .blue
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    
    var body: some View {
        
        ZStack {
            
            backgroundColor
                .ignoresSafeArea(.all)
            
            VStack(spacing: 20) {
                
                Text("\(myTitle)")
                    .font(.title)
                
                Text("counte: \(count)")
                    .font(.headline)
                    .underline()
                
                
                HStack(spacing: 20) {
                    
                    Button("Button 1") {
                        backgroundColor = .purple
                        myTitle = "Button1 pressed"
                        count -= 1
                    }
                    
                    Button("Button 2") {
                       backgroundColor = .red
                       myTitle = "Button2 pressed"
                       count += 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
