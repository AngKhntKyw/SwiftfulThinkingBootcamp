//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 7/5/25.
//

import SwiftUI

//@available(iOS, introduced: 13.0, deprecated: 15.0, message: "Use withAnimation or animation(_:value:) instead.")
@available(*, introduced: 13.0, deprecated: 15.0, message: "Use AnimationUpdatedBootcamp instead.")


struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        
        VStack {
            Button("Button") {
//                withAnimation(Animation.default.repeatForever(autoreverses: true)) {
//                    isAnimated.toggle()
//                }
                isAnimated.toggle()
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100: 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(Animation.default.repeatForever(autoreverses: true))
            
 
            Spacer()
        }
        
    }
}



#Preview {
    AnimationBootcamp()
}
