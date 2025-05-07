//
//  ButtonBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 7/5/25.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var title: String = "This is my title"
    
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text(title)
            
            Button("Press me!") {
                self.title = "Pressed Button 1"
            }
            .accentColor(.red)
            
            
            Button(action: {
                self.title = "Button 2 pressed!"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10))
            })
            
            
            Button(action: {
                self.title = "Pressed Button 3"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(content: {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    })
            })
            
            Button(action: {
                self.title = "Pressed Button 4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal , 10)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2)
                    )
            })
            
        }
    }
}

#Preview {
    ButtonBootcamp()
}
