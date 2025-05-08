//
//  ContentView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 5/5/25.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("Hello, Wee")
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(Color.blue)
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(.red)
        
    }
}

#Preview {
    ContentView()
}
