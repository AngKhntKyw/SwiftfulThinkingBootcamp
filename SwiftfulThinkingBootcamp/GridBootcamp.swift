//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 6/5/25.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        //        GridItem(.fixed(100), spacing: nil, alignment: nil),
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        
        
        // this spacing is vertical spacing
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        
        //        GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil),
        //        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil),
        
        
    ]
    
    var body: some View {
        
        ScrollView {
            
            //            Rectangle()
            //                .fill(.white)
            //                .frame(height: 300)
            //                .overlay(
            //                    Text("Hello")
            //                )
            
            
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            // this spacing is horizontal spacing
            LazyVGrid(columns: columns,alignment: .center,spacing: nil,pinnedViews: [.sectionHeaders], content: {
                
                Section(header:
                            Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .padding(),
                        content: {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                })
                
                Section(header:
                            Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .background(.red)
                    .padding(),
                        content: {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.green)
                            .frame(height: 150)
                        
                    }
                })
                
            })
            
            //            LazyVGrid(columns: columns ) {
            //
            //                ForEach(0..<50) { index in
            //                    Rectangle()
            //                        .frame(height: 150)
            //                }
            //
            //            }
        }
        
    }
}

#Preview {
    GridBootcamp()
}
