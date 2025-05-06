//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 6/5/25.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let fruit: Fruit
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        self.fruit = fruit
        
        if fruit == .Apples {
            self.backgroundColor = .red
        } else {
            self.backgroundColor = .green
        }
    }
    
    enum Fruit {
        case Apples, Oranges, Peaches
    }
    
    var body: some View {
        
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("\(fruit)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(20)
        .shadow(color: backgroundColor, radius: 10, x: 5, y: 5)
        
    }
}

#Preview {
    HStack {
        InitializerBootcamp(count: 32,fruit: .Oranges)
        InitializerBootcamp(count: 45,fruit: .Apples)

    }
}
