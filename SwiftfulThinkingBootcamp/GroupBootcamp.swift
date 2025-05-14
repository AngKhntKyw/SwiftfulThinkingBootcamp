//
//  GroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 14/5/25.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello world")
            
            Group {
                Text("Hello world")
                Text("Hello world")
            }
            .foregroundColor(.green)
            .font(.caption2)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

#Preview {
    GroupBootcamp()
}
