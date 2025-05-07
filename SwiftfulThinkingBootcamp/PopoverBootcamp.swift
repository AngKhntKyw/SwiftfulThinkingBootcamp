//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 7/5/25.
//


// sheets
// animations
// transitions


import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        
        ZStack {
            
            Color.orange
                .ignoresSafeArea(.all)
            
            VStack {
                
                Button("Button") {
                    showSheet.toggle()
                    
                }
                .font(.largeTitle)
                
                
                Spacer()
                
            }
            
//            METHOD 1 - (sheet)
//            .sheet(isPresented: $showSheet, content: {
//                NewScreen()
//            })
            
            
//            METHOD 2 - (transition)
//            add ZStack and .zIndex in order to get the transition effect when sheet is popped over
//            ZStack {
//                if showSheet {
//                    NewScreen(showNewScreen: $showSheet)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
//            METHOD 3 - (animation offset)
            NewScreen(showNewScreen: $showSheet)
                .padding(.top, 100)
                .offset(y: showSheet ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
                
        }
    }
}


struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool

    
    var body: some View {
                
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea(.all)
            
            Button(action: {
                
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(20)
            })
            
        }
    }
}
#Preview {
    PopoverBootcamp()
}
