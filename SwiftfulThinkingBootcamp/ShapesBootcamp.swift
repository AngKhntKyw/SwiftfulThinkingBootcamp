//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 5/5/25.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
        
        
        
//            .fill(.blue)
//            .foregroundColor(.white)
//            .stroke()
//            .stroke(.red)
//            .stroke(.blue, lineWidth: 30)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [60]))
//            .trim(from: 0.2,to: 1)
//            .stroke(.purple,lineWidth: 50)
     
            .frame(width: 300,height: 200)
        

        
    }
}

#Preview {
    ShapesBootcamp()
}
