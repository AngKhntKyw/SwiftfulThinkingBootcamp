//
//  ResizableSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 14/5/25.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
            // fration is more like persentage of the screen , not sure
            //                .presentationDetents([.fraction(0.1), .medium, .large])
            
            //                .presentationDetents([.medium, .large])
            
               
            
            //                .presentationDragIndicator(.visible)
            //                .interactiveDismissDisabled()
        }
        //        .onAppear {
        //            showSheet = true
        //        }
    }
}

struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                Button("20%") {
                    detents = .fraction(0.2)
                }
                
                Button("MEDIUM") {
                    // you can set only detents you have declared in => .presentationDetents([.medium, .large], selection: $detents) !!
                    detents = .medium
                }
                
                
                Button("600 pixels") {
                    detents = .height(600)
                }
                
                Button("LARGE") {
                    detents = .large
                }
            }
        }
        .presentationDetents([.fraction(0.2), .medium, .height(600), .large], selection: $detents)
        .presentationDragIndicator(.visible)
    }
}


#Preview {
    ResizableSheetBootcamp()
}
