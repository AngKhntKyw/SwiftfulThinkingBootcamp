//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 11/5/25.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followers: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Nick", userName: "nick123", followers: 100, isVerified: true),
        UserModel(displayName: "Chris", userName: "chris244", followers: 300, isVerified: false),
        UserModel(displayName: "Amely", userName: "amely78", followers: 340, isVerified: true),
        UserModel(displayName: "Mike", userName: "mike213", followers: 322, isVerified: false),
    ]
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack {
                            Text("\(user.followers)")
                                .font(.headline)
                            Text("followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Users")
            .listStyle(.insetGrouped)
        }
    }
}

#Preview {
    ModelBootcamp()
}

