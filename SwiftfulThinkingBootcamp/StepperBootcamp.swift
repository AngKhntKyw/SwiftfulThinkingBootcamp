//
//  StepperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 8/5/25.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0

    var body: some View {
      
        VStack {
            Stepper("Stepper 1 : \(stepperValue)", value: $stepperValue)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100 + widthIncrement)
             
            Stepper("Stepper 2 : \(stepperValue)", onIncrement: {
                incrementWidth(amount: 100)
            }, onDecrement: {
                incrementWidth(amount: -100)
            })
        }
        .padding(50)
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement +=  amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
