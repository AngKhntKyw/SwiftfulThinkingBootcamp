//
//  PaddingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 6/5/25.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
//        Text("Hello, World! This is fun.")
//            .background(.yellow)
//            .padding(.all, 10)
//            .padding(.leading, 20)
//            .background(.red)
        
//        Text("Hello")
//            .font(.title)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
////            .background(.red)
//            .padding(.leading, 20)
        
        VStack(alignment: .leading) {
            
            Text("Hello")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will on this screen. It is multiple lines and we will align the texts to the leading.")
               
               
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 10, x:0, y:10)
        )
        .padding(.horizontal, 10)
        
    }
    
}

#Preview {
    PaddingAndSpacerBootcamp()
}
