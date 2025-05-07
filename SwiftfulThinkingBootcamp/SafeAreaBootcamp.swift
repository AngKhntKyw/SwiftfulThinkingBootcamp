//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 7/5/25.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        
//        ZStack {
//            
//            // background layer
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            
//            
//            // foreground layer
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//                Text("Yoo")
//                
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red)
////            .edgesIgnoringSafeArea(.all)
//        }
        
        ScrollView {
            VStack {
                Text("Title")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment:  .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(
            Color.red
                .ignoresSafeArea(.all)
        )
        
    }
}

#Preview {
    SafeAreaBootcamp()
}
