//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 9/5/25.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    @State var data: [String] = [
        "Apples","Oranges","Bananas"
    ]
    @State var showAlert: Bool = false
    
    
    // MARK: BODY

    // Working copy - things to do
    /*
     1) fix title
     2) fix alert
     */
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                // background
                Color.red
                    .ignoresSafeArea()
                
                // foreground
                foregroundLayer
                    .navigationTitle("Documentation")
                    .navigationBarItems(
                        trailing:
                            Button("Alert") {
                                showAlert.toggle()
                            }
                    )
              
            }
           
            .alert(isPresented: $showAlert, content: {
                getAlert(text: "Hello")
            })
        }
    }
    
    // how to add summaary (option + tap )
    ///  this is the foreground layer that holds a scroll view
    private var foregroundLayer: some View {
        ScrollView {
            VStack {
                Text("Hello")
                
                ForEach(data, id: \.self) { index in
                    Text("\(index)")
                        .font(.headline)
                }
            }
        }
    }

    
    // MARK: FUNCTIONS
    
    /// get an alert with a specify title
    ///
    ///  This function creates and returns a alert immediately. This alert will have a title base on the text parameter but it will NOT have a message.
    ///  ```
    ///     getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    ///  ```
    ///
    /// - Warning: There is no additional message in this alert
    ///
    /// - Parameter text: This is the title of the alert
    /// - Returns: return an alert with a title
    func getAlert(text: String) -> Alert {
        Alert(title: Text(text))
    }
}


    // MARK: PREVIEW
#Preview {
    DocumentationBootcamp()
}
