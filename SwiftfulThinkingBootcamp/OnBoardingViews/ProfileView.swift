//
//  ProfileView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 12/5/25.
//

import SwiftUI

struct ProfileView: View {
    
    // for appstorage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Text(currentUserName ?? "current user name")
            Text("This user is \(currentUserAge ?? 0) years old")
            Text("The gender is \(currentUserGender ?? "unknown")")
            
            Text("SIGN OUT")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.black)
                .cornerRadius(10)
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(.white)
        .cornerRadius(20)
        .shadow(radius: 10)
        .padding()
        .padding(.vertical, 40)
        .onTapGesture {
            signOut()
        }
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

#Preview {
    ProfileView()
}
