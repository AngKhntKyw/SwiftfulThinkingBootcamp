//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 8/5/25.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the starting text...."
    @State var savedText: String = ""
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
//                    .foregroundStyle(.white.opacity(0.8))
//                    .background(.red)
//                    .scrollContentBackground(.hidden)
                    .colorMultiply(.gray)
                    .cornerRadius(10)
                
                
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                })
                
                Text(savedText)

                Spacer()
  
                
            }
            .padding()
//            .background(.green)
            .navigationTitle("TextEditor Bootcamp")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
