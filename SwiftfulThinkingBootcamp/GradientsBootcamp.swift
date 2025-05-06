//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 6/5/25.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                LinearGradient(gradient: Gradient(colors: [.red,.blue,.green]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                RadialGradient(gradient: Gradient(colors: [.red,.blue]), center: .center, startRadius: 5, endRadius: 200)
                AngularGradient(gradient:  Gradient(colors: [.red,.blue]), center:.topLeading, angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
        
    }
}

#Preview {
    GradientsBootcamp()
}
