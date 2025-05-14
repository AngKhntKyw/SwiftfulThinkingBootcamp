//
//  AnimationUpdatedBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 14/5/25.
//

import SwiftUI

struct AnimationUpdatedBootcamp: View {
    @State private var animated1: Bool = false
    @State private var animated2: Bool = false

    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                Button("Action 1") {
                    animated1.toggle()
                }
                
                Button("Action 2") {
                    animated2.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animated1 ? .leading : .trailing)
                        .background(.green)
                        .frame(maxHeight: .infinity, alignment: animated2 ? .top : .bottom)
                        .background(.orange)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.red)
            }
        }
        // deprecated
//        .animation(.spring())
        .animation(.smooth, value: animated1)
        .animation(.bouncy(duration: 2), value: animated2)

    }
}

#Preview {
    AnimationUpdatedBootcamp()
}
