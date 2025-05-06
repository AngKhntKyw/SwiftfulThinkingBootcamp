//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 6/5/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        
//        HStack(spacing: 0) {
//            
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .fill(.red)
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 50, height: 50)
//            
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(.orange)
//        }
////        .padding(.horizontal, 200)
//        .background(.yellow)
        
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
//                    .frame(height: 10)
//                    .background(.orange)
                Image(systemName: "gear")
            }
            .font(.title)
//            .background(.yellow)
            .padding(.horizontal)
//            .background(.blue)
            
            
            Spacer()
//                .frame(width: 10)
//                .background(.orange)
            
            
            Rectangle()
                .frame(height: 55)
        }
        .padding(.vertical)
//        .background(.yellow)

       
    }
}

#Preview {
    SpacerBootcamp()
}
