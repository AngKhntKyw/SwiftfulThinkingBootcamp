//
//  StackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 6/5/25.
//

import SwiftUI

struct StackBootcamp: View {
    
    
    var body: some View {
        
        
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//            
//            VStack(alignment: .leading, spacing: 30) {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//                
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100)
//                
//                HStack(alignment: .bottom, spacing: 30) {
//                    Rectangle()
//                        .fill(.purple)
//                        .frame(width: 50, height: 50)
//
//
//                    Rectangle()
//                        .fill(.pink)
//                        .frame(width: 75, height: 75)
//
//
//                    Rectangle()
//                        .fill(.white)
//                        .frame(width: 25, height: 25)
//                }
//                .background(.blue)
//            }
//            .background(.black)
//        }
//        
//
        
//        VStack(alignment: .center) {
//         
//            Text("5")
//                .font(.largeTitle)
//                .foregroundColor(.black)
//                .underline()
//            
//            Text("Items in your card:")
//                .font(.caption)
//                .foregroundColor(.gray)
//        }
        
        
        // example of stack and background
        // prefer background and overlay
        
        VStack(spacing: 30) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
        
      
    }
}

#Preview {
    StackBootcamp()
}
