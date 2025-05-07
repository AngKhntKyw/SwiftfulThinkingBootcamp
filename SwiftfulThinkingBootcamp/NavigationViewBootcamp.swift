//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 7/5/25.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                NavigationLink(
                    "go to second screen",
                    destination: MyOtherScreen())
                
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                
            }
            .navigationTitle("All Inboxes")
            //            .navigationBarTitleDisplayMode(.automatic)
            //            .navigationBarHidden(false)
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                },
                trailing: NavigationLink(
                    destination: MyOtherScreen(),
                    label: {
                        Image(systemName: "gear")
                    }
                )
                .accentColor(.red)
            )
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        ZStack() {
            Color.green
                .ignoresSafeArea(.all)
                .navigationTitle("Green screen")
                .navigationBarHidden(true)
            
            VStack() {
                Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("go to third screen", destination: Text("Third screen"))
            }
        }
        
    }
}


#Preview {
    NavigationViewBootcamp()
}
