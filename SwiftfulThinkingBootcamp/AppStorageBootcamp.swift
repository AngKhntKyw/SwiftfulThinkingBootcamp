//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 12/5/25.
//

import SwiftUI

struct AppStorageBootcamp: View {
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add name here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save") {
//                let name = "Al Puccino"
//                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
                currentUserName = "Al Pussino"
            }
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

#Preview {
    AppStorageBootcamp()
}
