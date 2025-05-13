//
//  NavigationStackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 13/5/25.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    @State private var stackPath: [String] = ["One","Two","Three"]
    let fruits = ["Apple","Orange","Banana","Peach","Mango"]
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 40) {
                    
                    Button("Super segue") {
                        stackPath.append(contentsOf: ["Coconet","Watermalon","Papaya"])
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("go to screen \(x)")
                        }
                    }
                }
            }
            .navigationTitle("Nav Bootcamp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("Another screen \(value)")
            }
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("Init screen \(value)")
    }
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
