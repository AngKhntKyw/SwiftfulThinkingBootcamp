//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 7/5/25.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
      
        VStack {
            Button("Button : \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting State" : "Ending State")
            
            RoundedRectangle(cornerRadius:  isStartingState ? 25 : 0)
                .fill(isStartingState ? .red : .blue)
                .frame(width:  isStartingState ? 200 : 100, height: isStartingState ?  100 : 100)
               
            Spacer()
        }
    }
}


#Preview {
    TernaryBootcamp()
}
