//
//  ButtonStyleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 13/5/25.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {
        VStack {
            
            Button(action: {
                
            }, label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            })
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            
            Button("Button1") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            //            .buttonStyle(.plain)
            .controlSize(.regular)
            .buttonStyle(.borderedProminent)
            
            
            Button("Button1") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            //            .buttonStyle(.bordered)
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            
            
            
            Button("Button1") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
            .buttonStyle(.borderedProminent)
            
            
            Button("Button1") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            //            .buttonStyle(.borderless)
            .controlSize(.mini)
            .buttonStyle(.borderedProminent)
            
        }
        .padding()
    }
}

#Preview {
    ButtonStyleBootcamp()
}
