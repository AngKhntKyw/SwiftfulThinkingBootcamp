//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 6/5/25.
//


import SwiftUI

struct ColorsBootcamp: View {

    var body: some View {
        
        RoundedRectangle(cornerRadius: 25)
            .fill(
                Color("myColor")
//                Color(UIColor.secondarySystemBackground)
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("myColor").opacity(0.5), radius: 10,x: 10, y: 10)
    }
        
}

#Preview {
    ColorsBootcamp()
}
