//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 8/5/25.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = .blue
    
    
    
    var body: some View {
      
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful thinking")
                .font(.headline)
            Text("How to use context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding()
        .background(backgroundColor)
        .cornerRadius(20)
        .shadow(radius: 10)
        .contextMenu(menuItems: {
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                Label("share post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .yellow

            }, label: {
                Text("report post")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })
            
            
        })
    }
}

#Preview {
    ContextMenuBootcamp()
}
