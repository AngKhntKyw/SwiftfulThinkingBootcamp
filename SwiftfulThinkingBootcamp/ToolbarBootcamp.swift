//
//  ToolbarBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 13/5/25.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.white
                    .ignoresSafeArea()
                
                ScrollView {
                    
                    TextField("Placeholder...", text: $text)
                    
                    ForEach(0..<15) { _ in
                        Rectangle()
                            .fill(.blue)
                            .frame(width: 200, height: 200)
                    }
                }
            }
            .navigationTitle("Toolbar")
            //            .navigationBarItems(
            //                leading: Image(systemName: "heart.fill"),
            //                trailing: Image(systemName: "gear")
            //                )
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                //                ToolbarItem(placement: .navigationBarTrailing) {
                //                    HStack {
                //                        Image(systemName: "gear")
                //                        Image(systemName: "house.fill")
                //
                //                    }
                //                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "gear")
                }
                //                ToolbarItem(placement: .navigationBarTrailing) {
                //                    Image(systemName: "house.fill")
                //                }
            }
//            .navigationBarHidden(true)
//            .toolbar(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("screen1") {
                    paths.append("Screen 1")
                }
                Button("screen2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New Screen \(value)")
            }
            
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
