//
//  TextfieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 8/5/25.
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textfieldText: String = ""
    @State var dataArray: [String] = []
    
    
    var body: some View {
        
        
        NavigationView {
            
            VStack(alignment: .leading) {
                
                TextField("Type something here...", text: $textfieldText)
                //            .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(.gray.opacity(0.1))
                    .cornerRadius(10)
                    .foregroundColor(.red)
                    .font(.headline)
                
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                }, label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? .blue : .gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!textIsAppropriate())
                
                List {
                    
                    Section(
                        header: Text("Tasks"), content: {
                            ForEach(dataArray, id: \.self) { data in
                                Text(data)
                            }
                        }
                    )
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }
    }
    
    func saveText() {
        dataArray.append(textfieldText)
        textfieldText = ""
    }
    
    func textIsAppropriate() -> Bool {
        if textfieldText.count >= 3 {
            return true
        }
        return false
        
    }
}

#Preview {
    TextfieldBootcamp()
}
