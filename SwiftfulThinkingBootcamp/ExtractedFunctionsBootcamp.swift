//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 7/5/25.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        
        ZStack {
            
            // background layer
            backgroundColor
                .ignoresSafeArea(.all)
            
            
            // content layer
            contentLayer
            
          
        }
    }
    
    
    var contentLayer: some View {
        VStack {
            
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPress()
            }, label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            })
        }
    }
    
    
    
    func buttonPress() {
        backgroundColor = .white
    }
    
    
    
}

#Preview {
    ExtractedFunctionsBootcamp()
}
