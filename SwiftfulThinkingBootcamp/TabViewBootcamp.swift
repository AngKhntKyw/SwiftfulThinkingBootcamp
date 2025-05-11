//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 9/5/25.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    
    @State var selectedTab: Int = 0
    
    let icons: [String] = ["heart.fill","globe","house.fill"]
    
    
    
    // if you wanna use selection , DO NOT FORGET TOO ADD TAG
    
    var body: some View {
        
        
//        TabView(selection: $selectedTab) {
//            
//            
//            HomeView(selectedTab: $selectedTab)
//                .tabItem({
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                })
//                .tag(0)
//                    
//            Text("Browse Tab")
//                .tabItem({
//                    Image(systemName: "globe")
//                    Text("Browse")
//                })
//                .tag(1)
//                    
//            Text("Profile Tab")
//                .tabItem({
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                })
//                .tag(2)
//            
//        }
//        .accentColor(.red)
        
        TabView {
            
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
            
        }
        .background(
            RadialGradient(colors: [.red,.blue], center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(.page(indexDisplayMode: .always))
        
        
    }
}


struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                })
            }
            
        }
    }
}



#Preview {
    TabViewBootcamp()
}
