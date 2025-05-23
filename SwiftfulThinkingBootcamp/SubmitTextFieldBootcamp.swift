//
//  SubmitTextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 13/5/25.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
       
        VStack {
            TextField("placeholder...",text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("Something to the console")
                }
            
            TextField("placeholder...",text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("Something to the console")
                }
            
            TextField("placeholder...",text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("Something to the console")
                }
            
        }
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
