//
//  NativePopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 14/5/25.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    @State private var popOver: Bool = false
    @State private var feedbacks: [String] = ["very good 😍","average 😊","very bad 😡"]
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                Spacer()
                 
                Button("Provide feedback?!") {
                    popOver.toggle()
                }
                
                .popover(isPresented: $popOver, attachmentAnchor: .point(.top), arrowEdge: .bottom) {
                    ScrollView {
                        VStack(alignment: .leading, spacing: 12) {
                            ForEach(feedbacks, id: \.self) { feedback in
                                
                                Button(feedback) {
                                    
                                }
                                if feedback != feedbacks.last {
                                    Divider()
                                    
                                }
                            }
                        }
                    }
                    .padding(20)
                    .presentationCompactAdaptation(.popover)
                }
            }
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
