//
//  AnyLayoutBootcamo.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 14/5/25.
//

import SwiftUI

struct AnyLayoutBootcamo: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Horizontal : \(horizontalSizeClass.debugDescription)")
            Text("Vertical : \(verticalSizeClass.debugDescription)")
            
            let layout:  AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) :  AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            } 
        }
    }
}

#Preview {
    AnyLayoutBootcamo()
}
