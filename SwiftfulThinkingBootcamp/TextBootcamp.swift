//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 5/5/25.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello world!".capitalized)
//            .font(.body)
//            .fontWeight(.semibold)
//            .underline()
//            .underline(true,color: .red)
//            .italic()
//            .strikethrough(true,color: .blue)
//            .font(.system(size: 24,weight: .semibold,design: .monospaced))
//            .baselineOffset(10)
//            .kerning(0)
        
            .multilineTextAlignment(.leading)
            .foregroundColor(.blue)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
        
    }
}

#Preview {
    TextBootcamp()
}
