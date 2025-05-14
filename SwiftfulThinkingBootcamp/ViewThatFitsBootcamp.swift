//
//  ViewThatFitsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 14/5/25.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            
            
            // that will priortise the text that will fit in the view
            
            ViewThatFits {
                Text("This is some text that I would like to display to the users")
                Text("This is some text that I would like to display!")
                Text("This is some text")
            }
//            Text("This is some text that I would like to display to the users")
//                .lineLimit(1)
//                .minimumScaleFactor(0.3)
        }
        .frame(height: 300)
        .padding(50)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
