//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 13/5/25.
//

import SwiftUI


// List
// TabView

struct BadgesBootcamp: View {
    var body: some View {
        //        TabView {
        //            Color.blue
        //                .tabItem({
        //                    Image(systemName: "heart.fill")
        //                    Text("Home")
        //                })
        //                .badge(5)
        //
        //            Color.red
        //                .tabItem({
        //                    Image(systemName: "heart.fill")
        //                    Text("safd")
        //                })
        //
        //            Color.green
        //                .tabItem({
        //                    Image(systemName: "heart.fill")
        //                    Text("safd")
        //                })
        //        }
        
        List {
            Text("Hello world")
                .badge("New Item")
            Text("Hello world")
            Text("Hello world")
            Text("Hello world")
            Text("Hello world")
        }
    }
}

#Preview {
    BadgesBootcamp()
}
