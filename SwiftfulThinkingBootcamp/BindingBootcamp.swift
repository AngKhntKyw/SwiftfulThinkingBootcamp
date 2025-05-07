//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 7/5/25.
//

import SwiftUI

struct BindingBootcamp: View {
    
    
    @State var backgroundColor: Color = .red
    @State var title: String = "This is the title"
    
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .ignoresSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                BottomView(backgroundColor: $backgroundColor,title: $title)
                
            }
        }
    }
}

struct BottomView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = .black
    
    var body: some View {
        
        Button(
            action: {
                backgroundColor = .orange
                buttonColor = . blue
                title = "Title changed"
            }, label: {
                Text("Button")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(buttonColor)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            })
    }
}

#Preview {
    BindingBootcamp()
}
