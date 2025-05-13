//
//  FocusStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 13/5/25.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingFields: Hashable {
        case username, password
    }
    
    //    @FocusState private var userNameInFocus: Bool
    @State private var userName: String = ""
    //    @FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    
    @FocusState private var fieldInFocus: OnboardingFields?
    
    var body: some View {
        
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $userName)
            //                .focused($userNameInFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here...", text: $password)
            //                .focused($passwordInFocus)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            
            Button("SIGN UP") {
                if !userName.isEmpty && !password.isEmpty {
                    print("Sign Up")
                } else if !userName.isEmpty {
                    fieldInFocus = .password
                    //                    userNameInFocus = false
                    //                    passwordInFocus = true
                } else {
                    fieldInFocus = .username
                    //                    userNameInFocus = true
                    //                    passwordInFocus = false
                }
            }
            
            Button("TOGGLE FOCUS STATE") {
                //                userNameInFocus.toggle()
            }
            
            Spacer()
            
            Button(action: {
                print("Button tapped")
            }) {
                Text("Outline Button")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                    )
            }
            
        }
        .padding(40)
        //        .onAppear {
        //            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
        //                self.userNameInFocus.toggle()
        //
        //            })
        //        }
    }
}

#Preview {
    FocusStateBootcamp()
}
