//
//  ExtractSubviewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 7/5/25.
//

import SwiftUI

struct ExtractSubviewBootcamp: View {
    var body: some View {
        
        ZStack {
            
            // background layer
            Color.blue
                .ignoresSafeArea(.all)
            
            // content layer
            contentLayer
            
            
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 13, color: .red)
            MyItem(title: "Banans", count: 23, color: .green)
            MyItem(title: "Mangos", count: 453, color: .yellow)
        }
    }
    
}

#Preview {
    ExtractSubviewBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
//    init(title: String, count: Int, color: Color) {
//        self.title = title
//        self.count = count
//        self.color = color
//    }
//    
    var body: some View {
        
        VStack {
            
            Text("\(title)")
            Text("\(count)")
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
    
}
