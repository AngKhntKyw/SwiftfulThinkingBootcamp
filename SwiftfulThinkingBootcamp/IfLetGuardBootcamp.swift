//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 9/5/25.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserId: String? = "user1"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        
        
        NavigationView {
            
            VStack {
                
                Text("Here we are practing safe coding")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                // do not use like this!
//                Text(displayText!)
//                    .font(.title)
               
                if isLoading {
                    ProgressView(label: {
                        Text("Loading...")
                    })
                }
                    
                Spacer()
            }
            .navigationTitle("Safe coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    
    // if statement
    func loadData() {
        if let userId = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                displayText = "This is the new data. User Id is : \(userId)"
                isLoading = false
            })
        } else {
            displayText = "Error. There is no user Id"
        }
    }
    
    // guard statement
    func loadData2() {
        guard let userId = currentUserId else {
            displayText = "Error. There is no user Id"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            displayText = "This is the new data. User Id is : \(userId)"
            isLoading = false
        })
    }
}

#Preview {
    IfLetGuardBootcamp()
}
