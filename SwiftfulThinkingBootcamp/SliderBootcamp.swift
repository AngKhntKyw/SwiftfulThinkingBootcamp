//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 9/5/25.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    
    var body: some View {
        
        VStack {
            
            Text("Rating")
            
            Text(
                //                "\(sliderValue)"
                String(format: "%.2f", sliderValue)
            )
            
            //            Slider(value:$sliderValue)
            //
            //            Slider(value: $sliderValue, in: 1...5)
            //                .accentColor(.red)
            
            //            Slider(value: $sliderValue, in: 0...20, step: 1.0)
            
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                
                label: {
                    Text("Slider")
                }, minimumValueLabel: {
                    Text("1")
                        .font(.largeTitle)
                        .foregroundColor(color)
                }, maximumValueLabel: {
                    Text("5")
                        .font(.largeTitle)
                        .foregroundColor(color)
                },  onEditingChanged: { (_) in
                    color = .green
                })
            .accentColor(color)
            
        }
        
    }
}

#Preview {
    SliderBootcamp()
}
