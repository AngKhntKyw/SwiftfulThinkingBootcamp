//
//  AnimationTimmingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 7/5/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10
    
    var body: some View {
       
        VStack {
            
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.spring())
            
                .animation(.spring(response: 1.0,dampingFraction: 0.2,blendDuration: 1.0))
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
        }
        
    }
}

#Preview {
    AnimationTimingBootcamp()
}
