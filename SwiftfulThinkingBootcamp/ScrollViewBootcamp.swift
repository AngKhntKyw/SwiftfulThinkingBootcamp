//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 6/5/25.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
//        ScrollView(.horizontal, showsIndicators: true, content:  {
//            HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(.green)
//                        .frame(width: 300, height: 300)
//                       
//                }
//            }
//            
//        })
        
        ScrollView {
            
            LazyVStack {
                
                ForEach(0..<10) { index in
                    
                    ScrollView(.horizontal, showsIndicators: true,content: {
                        
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.white)
                                    .frame(width: 200, height:  150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
