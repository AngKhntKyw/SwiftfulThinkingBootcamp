//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 7/5/25.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
      
        ZStack {
            
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            })
            
            .fullScreenCover(isPresented: $showSheet, content: {
//              do not add conditional logic here

                SecondScreen()
            })
//            .sheet(isPresented: $showSheet, content: {
//              do not add conditional logic here

//                SecondScreen()
//            })
        }
    }
}



struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
            
        }
    }
}

#Preview {
    SheetsBootcamp()
//    SecondScreen()
}
