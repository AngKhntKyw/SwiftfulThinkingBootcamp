//
//  ColorPickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 8/5/25.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var pickedColor: Color = .blue
    var body: some View {
        
        ZStack {
            
            pickedColor
                .ignoresSafeArea(.all)
            
            
            ColorPicker("Select a color", selection: $pickedColor, supportsOpacity: true)
                .padding()
                .background(.black)
                .cornerRadius(10)
                .foregroundColor(.white)
                .font(.headline)
                .padding(50)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
