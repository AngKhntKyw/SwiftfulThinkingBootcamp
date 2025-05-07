//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 7/5/25.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = true
    
    var body: some View {
        
        VStack(spacing: 20) {
            
//            Button("Circle Button : \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            
//            Button("Rectangle Button : \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//            
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100 , height: 100)
//            }
//            if showCircle || showRectangle {
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: 100 , height: 100)
//            }
            
            
    
            Button("Button") {
                isLoading.toggle()
            }
            if isLoading {
                ProgressView()
                    .tint(.red)
            } else {
                Text("Data")
            }
            Spacer()
            
            
            
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
