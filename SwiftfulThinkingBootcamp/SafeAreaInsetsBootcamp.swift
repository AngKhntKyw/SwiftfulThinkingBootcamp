//
//  SafeAreaInsetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 14/5/25.
//

import SwiftUI

struct SafeAreaInsetsBootcamp: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<10) { _ in
                    Rectangle()
                        .frame(height: 300)
                }
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
            //            .overlay (
            //                Text("Hello")
            //                    .frame(maxWidth: .infinity)
            //                    .background(.yellow),
            //                alignment: .bottom)
            
            .safeAreaInset(edge: .top,alignment: .trailing,spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
//                    .padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
//                    .clipShape(Circle())
//                    .padding()
            }
            
            .safeAreaInset(edge: .bottom,alignment: .trailing,spacing: nil) {
                Text("Hello")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
//                    .clipShape(Circle())
//                    .padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetsBootcamp()
}
