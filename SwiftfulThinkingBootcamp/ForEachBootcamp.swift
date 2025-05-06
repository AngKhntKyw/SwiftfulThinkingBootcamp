//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 6/5/25.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    
    let data: [String] = ["Hi","Hello","Hey","How"]
    let myString: String = "Hello"
    
    var body: some View {
        
        VStack {
            
            ForEach(data.indices) { item in
                Text("\(data[item]) \(item)")
            }
            
            // this still can't scroll
            
            ForEach(0..<100) { index in
                Circle()
                    .frame(height: 30)
            }
            
        }
    }
}

#Preview {
    ForEachBootcamp()
}
