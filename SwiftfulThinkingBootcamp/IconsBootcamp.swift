//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 6/5/25.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
//            .scaledToFill()
            .font(.largeTitle)
//            .font(.system(size: 200))
//            .foregroundColor(Color("myColor"))
//            .foregroundColor(.blue)
//            .frame(width: 300, height: 300)
//            .clipped()
        
    }
}

#Preview {
    IconsBootcamp()
}
