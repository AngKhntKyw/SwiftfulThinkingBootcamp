//
//  TapGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 9/5/25.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        
        VStack(spacing: 40) {
            
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 250)
                .foregroundColor(isSelected ? .green : .red)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(20)
                
            })
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(20)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
//                .onTapGesture(count: 2, perform: {
//                    isSelected.toggle()
//                })
                .onLongPressGesture {
                    isSelected.toggle()
                }
            
            Spacer()
            
        }
        .padding(40)
    }
}

#Preview {
    TapGestureBootcamp()
}
